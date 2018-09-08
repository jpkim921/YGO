class ChangeDefaultForNumOfItemsInOrders < ActiveRecord::Migration
  def change
    change_column :orders, :num_of_items, :integer, :default => 0
    change_column :orders, :total_price, :integer, :default => 0
  end
end
