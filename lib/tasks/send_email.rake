namespace :send_email do
  desc "Send the number of studios via email"
  task number_of_studios: :environment do
    ReportMailer.send_studios_report.deliver
    Studio.update_all("last_week_status = status")
    Room.update_all("last_week_status = status")
  end
end
