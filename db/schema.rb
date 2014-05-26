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

ActiveRecord::Schema.define(version: 20140525113923) do

  create_table "cashouts", force: true do |t|
    t.integer  "customer_order_id"
    t.integer  "total_sale_price"
    t.integer  "delivery_charge"
    t.integer  "grand_total_sale_price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customer_orders", force: true do |t|
    t.string   "customer_name"
    t.string   "contact_number"
    t.string   "email"
    t.string   "address"
    t.date     "order_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "foods", force: true do |t|
    t.string   "name"
    t.string   "foodtype"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sub_orders", force: true do |t|
    t.integer  "customer_order_id"
    t.integer  "food_id"
    t.string   "name"
    t.string   "foodtype"
    t.integer  "quantity"
    t.integer  "totalprice"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suborders", force: true do |t|
    t.string   "name"
    t.string   "foodtype"
    t.integer  "quantity"
    t.integer  "totalprice"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
