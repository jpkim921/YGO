class RemoveColumnsFromCards < ActiveRecord::Migration
  def change
    remove_column :cards, :atk_level
    remove_column :cards, :def_level
  end
end
