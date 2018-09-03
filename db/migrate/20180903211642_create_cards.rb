class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :name
      t.string :type
      t.integer :atk_level
      t.integer :def_level
      t.integer :star_level

      t.timestamps null: false
    end
  end
end
