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

ActiveRecord::Schema.define(version: 20170717140052) do

  create_table "food_locations", force: :cascade do |t|
    t.integer "food_id"
    t.integer "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_id", "location_id"], name: "index_food_locations_on_food_id_and_location_id", unique: true
    t.index ["food_id"], name: "index_food_locations_on_food_id"
    t.index ["location_id"], name: "index_food_locations_on_location_id"
  end

  create_table "food_types", force: :cascade do |t|
    t.integer "food_id"
    t.integer "type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_id", "type_id"], name: "index_food_types_on_food_id_and_type_id", unique: true
    t.index ["food_id"], name: "index_food_types_on_food_id"
    t.index ["type_id"], name: "index_food_types_on_type_id"
  end

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "quantity", default: 1
    t.integer "household_id"
    t.boolean "deleted", default: false
    t.date "use_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["household_id", "deleted"], name: "index_foods_on_household_id_and_deleted"
    t.index ["household_id", "quantity", "deleted"], name: "index_foods_on_household_id_and_quantity_and_deleted"
    t.index ["household_id"], name: "index_foods_on_household_id"
  end

  create_table "households", force: :cascade do |t|
    t.string "name"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["active"], name: "index_households_on_active"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "household_id"
    t.boolean "deleted", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["household_id", "deleted"], name: "index_locations_on_household_id_and_deleted"
    t.index ["household_id"], name: "index_locations_on_household_id"
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.integer "household_id"
    t.boolean "deleted", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["household_id", "deleted"], name: "index_types_on_household_id_and_deleted"
    t.index ["household_id"], name: "index_types_on_household_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.boolean "administrator", default: false
    t.boolean "active", default: true
    t.boolean "head_of_household", default: false
    t.integer "household_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["household_id", "active"], name: "index_users_on_household_id_and_active"
    t.index ["household_id"], name: "index_users_on_household_id"
  end

  create_table "versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
  end

end
