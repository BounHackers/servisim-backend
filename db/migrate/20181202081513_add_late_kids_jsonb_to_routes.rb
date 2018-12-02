class AddLateKidsJsonbToRoutes < ActiveRecord::Migration[5.2]
  def change
    add_column :routes, :late_kids, :string
  end
end
