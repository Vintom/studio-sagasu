namespace :update_last_week_status do
  desc "Update last_week_status of studios and rooms table"
  task studios: :environment do
    Studio.update_all("last_week_status = status")
  end
  task rooms: :environment do
    Room.update_all("last_week_status = status")
  end
end
