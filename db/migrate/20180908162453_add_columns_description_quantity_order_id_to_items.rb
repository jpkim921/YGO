class AddColumnsDescriptionQuantityOrderIdToItems < ActiveRecord::Migration
  def change
    add_column :items, :description, :text
    add_column :items, :quantity, :integer, default: 0
    add_column :items, :order_id, :integer
  end
end
