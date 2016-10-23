class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :game_id
      t.integer :user_id
      t.string :name
      t.integer :power_id
      t.integer :str
      t.integer :per
      t.integer :end
      t.integer :cha
      t.integer :dex
      t.integer :int
      t.integer :luck
      t.integer :cur_hp
      t.integer :max_hp
      t.integer :luck_points
      t.integer :damage_melee
      t.integer :damage_range
      t.text :inventory
      t.text :interest
      t.integer :ap

      t.timestamps null: false
    end
  end
end
