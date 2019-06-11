class ChangeColumnTypesInSomeTables < ActiveRecord::Migration[5.0]
  def up
    change_column :studios, :late_night, :tinyint, length: 4
    change_column :studios, :locker_room, :tinyint, length: 4
    change_column :studios, :parking, :tinyint, length: 4
    change_column :rooms, :speaker, :tinyint, length: 4
    change_column :rooms, :mixer, :tinyint, length: 4
    change_column :rooms, :cd, :tinyint, length: 4
    change_column :rooms, :md, :tinyint, length: 4
    change_column :rooms, :mp3, :tinyint, length: 4
    change_column :rooms, :dimmable, :tinyint, length: 4
    change_column :rooms, :wifi, :tinyint, length: 4
  end

  def down
    change_column :studios, :late_night, :boolean
    change_column :studios, :locker_room, :boolean
    change_column :studios, :parking, :boolean
    change_column :rooms, :speaker, :boolean
    change_column :rooms, :mixer, :boolean
    change_column :rooms, :cd, :boolean
    change_column :rooms, :md, :boolean
    change_column :rooms, :mp3, :boolean
    change_column :rooms, :dimmable, :boolean
    change_column :rooms, :wifi, :boolean
  end
end
