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

ActiveRecord::Schema.define(version: 20161209094717) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "displays", force: :cascade do |t|
    t.string   "name"
    t.string   "theme"
    t.integer  "users_id"
    t.boolean  "public"
    t.boolean  "archived"
    t.integer  "likes"
    t.integer  "size"
    t.string   "layout"
    t.string   "ar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "items_id"
    t.index ["items_id"], name: "index_displays_on_items_id", using: :btree
    t.index ["users_id"], name: "index_displays_on_users_id", using: :btree
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.string   "link_context"
    t.string   "description"
    t.integer  "users_id"
    t.integer  "displays_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["displays_id"], name: "index_items_on_displays_id", using: :btree
    t.index ["users_id"], name: "index_items_on_users_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "displays", "items", column: "items_id"
  add_foreign_key "displays", "users", column: "users_id"
  add_foreign_key "items", "displays", column: "displays_id"
  add_foreign_key "items", "users", column: "users_id"
end
