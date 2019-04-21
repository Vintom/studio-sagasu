class ReportMailer < ApplicationMailer
  default from: "noreply@vintom.co.jp"

  def send_studios_report
    mail(
      subject: "sagasu.spaceスタジオ数週次レポート"
      to: "all@vintom.co.jp"
    ) do |format|
      format.text
    end
  end
end
