class AddStartTimeToRoutes < ActiveRecord::Migration[5.2]
  def change
    add_column :routes, :start_time, :timestamp
  end
end
