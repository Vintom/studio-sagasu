class AddLastWeekStatusToStudiosAndRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :studios, :last_week_status, :integer, default: 0, limit: 1, after: :status
    add_column :rooms,   :last_week_status, :integer, default: 0, limit: 1, after: :status
  end
end
