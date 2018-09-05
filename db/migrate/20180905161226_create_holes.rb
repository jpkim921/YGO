class CreateHoles < ActiveRecord::Migration
  def change
    create_table :holes do |t|
      t.string :hole_number
      t.string :integer
      t.integer :par
      t.integer :distance
      t.integer :game_id
      t.integer :player_id
    end
  end
end
