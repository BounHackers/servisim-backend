class CreateKids < ActiveRecord::Migration[5.2]
  def change
    create_table :kids do |t|
      t.string :name, null: false
      t.string :location
      t.string :username, null: false
      t.string :password, null: false
      t.references :parent, foreign_key: true, null: false

      t.timestamps
    end

    add_index :kids, :username, unique: true
  end
end
