namespace :send_email do
  desc "Send the number of studios via email"
  task number_of_studios: :environment do
    ReportMailer.send_studios_report.deliver
  end
end
