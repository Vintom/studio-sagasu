# frozen_string_literal: true
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_search_info
  before_action :basic_auth, if: -> { Rails.env.staging? }
  before_action :detect_variant
  before_action :is_sp?

  if !Rails.env.development?
    rescue_from Exception,                        with: :render_500
    rescue_from ActiveRecord::RecordNotFound,     with: :render_404
    rescue_from ActionController::RoutingError,   with: :render_404
  end

  def routing_error
    raise ActionController::RoutingError.new(params[:path])
  end

  def render_404(e = nil)
    logger.info "Rendering 404 with exception: #{e.message}" if e

    render file: Rails.root.join('public/404.html'), status: 404, layout: 'layouts/application', content_type: 'text/html'
  end

  def render_500(e = nil)
    logger.info "Rendering 500 with exception: #{e.message}" if e

    render file: Rails.root.join('public/500.html'), status: 500, layout: 'layouts/application', content_type: 'text/html'
  end

  private

  def set_search_info
    session[:area] = params[:area] if params[:area].present?
    session[:people] = params[:people] if params[:people].present? && !params[:people].include?("-")
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |user, pass|
      user == 'sagasu' && pass == 'space'
    end
  end

  def detect_variant
    request.variant = :phone if is_sp?
  end

  def is_sp?
    @is_sp ||= (Woothee.parse(request.user_agent)[:category] == :smartphone)
  end
end
