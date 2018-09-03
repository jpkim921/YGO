class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :wins
      t.integer :loss

      t.timestamps null: false
    end
  end
end
