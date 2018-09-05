class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :total_price
      t.integer :num_of_items

      t.timestamps null: false
    end
  end
end
