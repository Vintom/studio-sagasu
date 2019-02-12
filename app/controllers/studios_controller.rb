# frozen_string_literal: true
class StudiosController < ApplicationController
  layout :select_layout
  before_action :set_studio, only: [:show, :edit, :update, :destroy]
  before_action :url_formatter, only: :index

  # GET /studios
  # GET /studios.json
  def index # rubocop:disable Metrics/AbcSize
    @studios = Studio.displayed.by_late_night(params[:late_night]&.to_i).by_locker_room(params[:locker_room])
                     .by_parking(params[:parking]).by_area(session[:area]).by_people(session[:people])
                     .page(params[:page])
    @area = params[:area] == 'all' ? '首都圏' : Area.find_by(slug: session[:area]).city
    @people = session[:people].blank? || session[:people] == '6' ? '' : "#{PeopleRange.find(session[:people]).name}で使える"
  end

  # GET /studios/1
  # GET /studios/1.json
  def show
    @recommend_studios = Studio.displayed.by_area(session[:area]).by_people(session[:people]).where.not(id: @studio.id).limit(3)
  end

  # GET /studios/new
  def new
    @studio = Studio.new
  end

  # GET /studios/1/edit
  def edit
  end

  # POST /studios
  # POST /studios.json
  def create
    @studio = Studio.new(studio_params)

    respond_to do |format|
      if @studio.save
        format.html { redirect_to @studio, notice: 'Studio was successfully created.' }
        format.json { render :show, status: :created, location: @studio }
      else
        format.html { render :new }
        format.json { render json: @studio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /studios/1
  # PATCH/PUT /studios/1.json
  def update
    respond_to do |format|
      if @studio.update(studio_params)
        format.html { redirect_to @studio, notice: 'Studio was successfully updated.' }
        format.json { render :show, status: :ok, location: @studio }
      else
        format.html { render :edit }
        format.json { render json: @studio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studios/1
  # DELETE /studios/1.json
  def destroy
    @studio.destroy
    respond_to do |format|
      format.html { redirect_to studios_url, notice: 'Studio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_studio
    @studio = Studio.friendly.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def studio_params
    params.require(:studio).permit(:name, :prefecture, :city, :address, :nearest_station_1,
                                   :nearest_station_2, :nearest_station_3, :tel, :start_hours,
                                   :end_hours, :late_night, :locker_room, :parking,
                                   :cancell_deadline, :image, :url, :feature, :remarks)
  end

  def select_layout
    if action_name == 'index'
      'studio_index'
    elsif action_name == 'show'
      'studio'
    end
  end

  def url_formatter
    return unless params[:button]
    area = case
           when session[:area].blank? && params[:area].blank?
             'all'
           when session[:area].present? && params[:area].blank?
             session[:area]
           else
             params[:area]
           end
    redirect_to studios_path(area: area, people: view_context.people_range_format(session[:people]))
  end

  def apply
  end
end
