class CreateRoutes < ActiveRecord::Migration[5.2]
  def change
    create_table :routes do |t|
      t.references :kid, foreign_key: true

      t.timestamps
    end

    create_join_table :routes, :kids do |t|
      t.index :route_id
      t.index :kid_id
    end
  end
end
