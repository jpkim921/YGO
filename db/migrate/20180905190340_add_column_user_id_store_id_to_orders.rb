class AddColumnUserIdStoreIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :user_id, :integer
    add_column :orders, :store_id, :integer
  end
end
