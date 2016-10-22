class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.int :user_id

      t.timestamps null: false
    end
  end
end
