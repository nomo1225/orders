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

ActiveRecord::Schema.define(version: 2021_04_22_052934) do

  create_table "places", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "company"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "supplier"
    t.string "name"
    t.string "details"
    t.string "unit"
    t.integer "purchase_price"
    t.integer "sale_price_nb"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "remarks1"
    t.string "remarks2"
    t.integer "sale_price_nk"
    t.integer "sale_price_tt"
  end

  create_table "receiveds", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "number"
    t.date "desired_day"
    t.string "name"
    t.bigint "place_id"
    t.bigint "product_id"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "seller_id"
    t.index ["place_id"], name: "index_receiveds_on_place_id"
    t.index ["product_id"], name: "index_receiveds_on_product_id"
    t.index ["seller_id"], name: "index_receiveds_on_seller_id"
  end

  create_table "sellers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "company"
    t.string "post_number"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "receiveds", "places"
  add_foreign_key "receiveds", "products"
  add_foreign_key "receiveds", "sellers"
end
