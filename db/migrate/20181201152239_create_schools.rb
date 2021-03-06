# frozen_string_literal: true

class CreateSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :schools do |t|
      t.string :name, null: false
      t.string :location

      t.timestamps
    end
  end
end
