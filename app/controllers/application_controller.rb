# frozen_string_literal: true
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_search_info
  before_action :basic_auth, if: -> { Rails.env.staging? }

  private

  def set_search_info
    session[:area] = params[:area] if params[:area]
    session[:people] = params[:people] if params[:people]
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |user, pass|
      user == 'sagasu' && pass == 'space'
    end
  end
end
