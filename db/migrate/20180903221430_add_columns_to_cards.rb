class AddColumnsToCards < ActiveRecord::Migration
  def change
    add_column :cards, :attribute, :string
    add_column :cards, :atk, :integer
    add_column :cards, :def, :integer
    add_column :cards, :description, :text
  end
end
