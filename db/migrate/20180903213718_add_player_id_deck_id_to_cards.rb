class AddPlayerIdDeckIdToCards < ActiveRecord::Migration
  def change
    add_column :cards, :player_id, :integer
    add_column :cards, :deck_id, :integer
  end
end
