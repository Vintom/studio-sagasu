class ReportMailer < ApplicationMailer
  default from: "noreply@vintom.co.jp"

  def send_studios_report
    @active_studio = Studio.where(status: 1)
    @inactive_studio = Studio.where(status: 0)
    @reviewing_studio = Studio.where(status: 2)
    mail(
      subject: "sagasu.spaceスタジオ数週次レポート",
      to: "all@vintom.co.jp"
    ) do |format|
      format.html
    end
  end
end
