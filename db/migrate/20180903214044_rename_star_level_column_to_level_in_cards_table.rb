class RenameStarLevelColumnToLevelInCardsTable < ActiveRecord::Migration
  def change
    rename_column :cards, :star_level, :level
  end
end
