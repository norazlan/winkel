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

ActiveRecord::Schema.define(version: 20160830072406) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.text     "detail"
    t.integer  "quantity"
    t.string   "image"
    t.decimal  "price",      precision: 6, scale: 2
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "ordered_items", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "quantity"
    t.integer  "item_id"
    t.integer  "order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string   "status"
    t.datetime "date_shipped"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "username"
    t.string   "password"
    t.string   "mobile"
    t.string   "email"
    t.string   "billing_address"
    t.string   "billing_postcode"
    t.string   "billing_state"
    t.string   "billing_country"
    t.string   "shipping_address"
    t.string   "shipping_postcode"
    t.string   "shipping_state"
    t.string   "shipping_country"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "token_reset"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
  end

end
