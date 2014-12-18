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

ActiveRecord::Schema.define(version: 20141218192800) do

  create_table "authors", force: true do |t|
    t.string   "name"
    t.text     "bio"
    t.string   "image_url"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "authors_strategies", id: false, force: true do |t|
    t.integer "strategy_id", null: false
    t.integer "author_id",   null: false
  end

  add_index "authors_strategies", ["strategy_id", "author_id"], name: "index_authors_strategies_on_strategy_id_and_author_id"

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories_strategies", id: false, force: true do |t|
    t.integer "strategy_id", null: false
    t.integer "category_id", null: false
  end

  add_index "categories_strategies", ["strategy_id", "category_id"], name: "index_categories_strategies_on_strategy_id_and_category_id"

  create_table "favorites", force: true do |t|
    t.integer  "user_id"
    t.integer  "strategy_id"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "favorites", ["strategy_id"], name: "index_favorites_on_strategy_id"
  add_index "favorites", ["user_id"], name: "index_favorites_on_user_id"

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles_users", id: false, force: true do |t|
    t.integer "user_id", null: false
    t.integer "role_id", null: false
  end

  add_index "roles_users", ["user_id", "role_id"], name: "index_roles_users_on_user_id_and_role_id"

  create_table "strategies", force: true do |t|
    t.string   "title"
    t.text     "intro"
    t.date     "date"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "strategies", ["user_id"], name: "index_strategies_on_user_id"

  create_table "tips", force: true do |t|
    t.string   "title"
    t.string   "content"
    t.integer  "strategy_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tips", ["strategy_id"], name: "index_tips_on_strategy_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
