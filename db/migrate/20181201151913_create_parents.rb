# frozen_string_literal: true

class CreateParents < ActiveRecord::Migration[5.2]
  def change
    create_table :parents do |t|
      t.string :name, null: false
      t.string :location
      t.string :username, null: false
      t.string :password, null: false

      t.timestamps
    end

    add_index :parents, :username, unique: true
  end
end
