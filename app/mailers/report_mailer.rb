class ReportMailer < ApplicationMailer
  default from: "noreply@vintom.co.jp"

  def send_studios_report
    @area_studios = Studio.includes(:area)
    @studio_rooms = Room.includes(:studio)
    @area_studio_rooms = Room.includes(studio: :area)
    @prefectures = Area.order(:id).group(:prefecture).pluck(:prefecture)
    @active_studios = Studio.where(status: 1)
    @inactive_studios = Studio.where(status: 0)
    @reviewing_studios = Studio.where(status: 2)
    @active_rooms = Room.where(status: 1)
    @inactive_rooms = Room.where(status: 0)
    @reviewing_rooms = Room.where(status: 2)
    mail(
      subject: "sagasu.spaceスタジオ数週次レポート",
      to: "all@vintom.co.jp"
    ) do |format|
      format.html
    end
  end
end
