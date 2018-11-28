class CreateSearchPeople < ActiveRecord::Migration[5.0]
  def up
    create_table :search_people do |t|
      t.string :name
      t.integer :min
      t.integer :max

      t.timestamps
    end
  end

  def down
  end
end
