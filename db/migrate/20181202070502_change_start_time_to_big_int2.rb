class ChangeStartTimeToBigInt2 < ActiveRecord::Migration[5.2]
  def change
    add_column :routes, :start_time, :bigint
  end
end
