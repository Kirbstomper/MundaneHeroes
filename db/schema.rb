# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161022191857) do

  create_table "characters", force: :cascade do |t|
    t.string   "game_id"
    t.integer  "user_id"
    t.string   "name"
    t.integer  "power_id"
    t.integer  "str"
    t.integer  "per"
    t.integer  "end"
    t.integer  "cha"
    t.integer  "dex"
    t.integer  "int"
    t.integer  "luck"
    t.integer  "cur_hp"
    t.integer  "max_hp"
    t.integer  "luck_points"
    t.integer  "damage_melee"
    t.integer  "damage_range"
    t.text     "inventory"
    t.text     "interest"
    t.integer  "ap"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "games", force: :cascade do |t|
    t.string   "game_title"
    t.string   "game_id"
    t.integer  "gm_id"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "powers", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
