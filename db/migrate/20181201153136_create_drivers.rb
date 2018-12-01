class CreateDrivers < ActiveRecord::Migration[5.2]
  def change
    create_table :drivers do |t|
      t.references :school, foreign_key: true
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
