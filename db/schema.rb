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

ActiveRecord::Schema.define(version: 20180123214013) do

  create_table "calculators", force: :cascade do |t|
    t.decimal "value_a"
    t.decimal "value_b"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "properties", force: :cascade do |t|
    t.text "property_name"
    t.text "address"
    t.text "postcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "sector_id"
  end

  create_table "rental_details", force: :cascade do |t|
    t.integer "number_of_beds"
    t.decimal "weekly_rent"
    t.decimal "term_weeks"
    t.decimal "occupancy"
    t.integer "scenario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scenarios", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "scenario_name"
    t.text "description"
    t.integer "property_id"
  end

  create_table "sectors", force: :cascade do |t|
    t.text "sector_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "valuation_details", force: :cascade do |t|
    t.decimal "net_initial_yield"
    t.decimal "purchasers_costs"
    t.integer "scenario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
