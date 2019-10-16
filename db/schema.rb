# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_13_221721) do

  create_table "addresses", force: :cascade do |t|
    t.string "state"
    t.string "city"
    t.string "street"
    t.integer "number"
    t.integer "show_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["show_id"], name: "index_addresses_on_show_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "name"
    t.string "role"
    t.integer "pay"
    t.boolean "pay_by_percent"
    t.boolean "musician"
    t.integer "tour_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tour_id"], name: "index_members_on_tour_id"
  end

  create_table "quotations", force: :cascade do |t|
    t.text "quote"
    t.string "author"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shows", force: :cascade do |t|
    t.integer "pay"
    t.integer "expected_merch"
    t.time "load_in"
    t.time "set"
    t.string "lodging"
    t.text "description"
    t.date "date"
    t.integer "tour_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "address"
    t.index ["tour_id"], name: "index_shows_on_tour_id"
  end

  create_table "tours", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "member"
    t.integer "show"
  end

end
