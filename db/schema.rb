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

ActiveRecord::Schema.define(version: 20161209112718) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "displays", force: :cascade do |t|
    t.string   "name"
    t.string   "theme"
    t.boolean  "public"
    t.boolean  "archived"
    t.integer  "likes"
    t.integer  "size"
    t.string   "layout"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_displays_on_user_id", using: :btree
  end

  create_table "displays_items", id: false, force: :cascade do |t|
    t.integer "display_id", null: false
    t.integer "item_id",    null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.string   "link_context"
    t.string   "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_items_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "image"
    t.string   "gender"
    t.date     "Dob"
    t.string   "location"
    t.string   "interests"
    t.text     "about"
  end

  add_foreign_key "displays", "users"
  add_foreign_key "items", "users"
end
