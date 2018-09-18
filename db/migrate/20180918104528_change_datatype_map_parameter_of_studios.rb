class ChangeDatatypeMapParameterOfStudios < ActiveRecord::Migration[5.0]
  def change
    change_column :studios, :map_parameter, :text
  end
end
