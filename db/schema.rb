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

ActiveRecord::Schema.define(version: 2018_12_01_153557) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "drivers", force: :cascade do |t|
    t.bigint "school_id"
    t.string "username"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id"], name: "index_drivers_on_school_id"
  end

  create_table "kids", force: :cascade do |t|
    t.string "name", null: false
    t.string "location"
    t.string "username", null: false
    t.string "password", null: false
    t.bigint "parent_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parent_id"], name: "index_kids_on_parent_id"
    t.index ["username"], name: "index_kids_on_username", unique: true
  end

  create_table "kids_routes", id: false, force: :cascade do |t|
    t.bigint "route_id", null: false
    t.bigint "kid_id", null: false
    t.index ["kid_id"], name: "index_kids_routes_on_kid_id"
    t.index ["route_id"], name: "index_kids_routes_on_route_id"
  end

  create_table "kids_schools", id: false, force: :cascade do |t|
    t.bigint "school_id", null: false
    t.bigint "kid_id", null: false
    t.index ["kid_id"], name: "index_kids_schools_on_kid_id"
    t.index ["school_id"], name: "index_kids_schools_on_school_id"
  end

  create_table "parents", force: :cascade do |t|
    t.string "name", null: false
    t.string "location"
    t.string "username", null: false
    t.string "password", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["username"], name: "index_parents_on_username", unique: true
  end

  create_table "routes", force: :cascade do |t|
    t.bigint "kid_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kid_id"], name: "index_routes_on_kid_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string "name", null: false
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "drivers", "schools"
  add_foreign_key "kids", "parents"
  add_foreign_key "routes", "kids"
end
