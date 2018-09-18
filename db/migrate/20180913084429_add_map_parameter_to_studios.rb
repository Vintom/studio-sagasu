class AddMapParameterToStudios < ActiveRecord::Migration[5.0]
  def change
    add_column :studios, :map_parameter, :string
  end
end
