class ChangeStartTimeToBigInt < ActiveRecord::Migration[5.2]
  def change
    remove_column :routes, :start_time
  end
end
