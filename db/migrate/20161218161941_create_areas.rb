# frozen_string_literal: true
class CreateAreas < ActiveRecord::Migration[5.0]
  def change
    create_table :areas do |t|
      t.string :prefecture
      t.string :city

      t.timestamps
    end
  end
end
