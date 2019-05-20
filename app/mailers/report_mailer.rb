class ReportMailer < ApplicationMailer
  default from: "noreply@vintom.co.jp"
  STATUS_ORDER = [1,0,2]

  def send_studios_report
    @studios = Studio.all
    @rooms = Room.all
    @area_studios = Studio.includes(:area)
    @studio_rooms = Room.includes(:studio)
    @area_studio_rooms = Room.includes(studio: :area)
    @prefectures = Area.order(:id).group(:prefecture).pluck(:prefecture)
    mail(
      subject: "sagasu.spaceスタジオ数週次レポート",
      to: "all@vintom.co.jp"
    ) do |format|
      format.html
    end
  end
end
