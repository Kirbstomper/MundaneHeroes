class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :game_title
      t.string :game_id
      t.integer :gm_id
      t.text :description

      t.timestamps null: false
    end
  end
end
