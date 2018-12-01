class AddDriverToRoutes < ActiveRecord::Migration[5.2]
  def change
    remove_column :routes, :kid_id

    change_table :routes do |t|
      t.references :driver, foreign_key: true
    end
  end
end
