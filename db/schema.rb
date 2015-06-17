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

ActiveRecord::Schema.define(version: 20150617021954) do

  create_table "providers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.decimal  "price",       default: 0.0
    t.boolean  "on_sale",     default: false
    t.integer  "provider_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.boolean  "trash",       default: false
    t.integer  "amount"
    t.string   "name"
    t.text     "api"
  end

  add_index "services", ["provider_id"], name: "index_services_on_provider_id"

  create_table "user_services", force: :cascade do |t|
    t.integer  "service_id"
    t.integer  "user_id"
    t.decimal  "price"
    t.integer  "used_times",  default: 0
    t.integer  "total_times"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "user_services", ["service_id"], name: "index_user_services_on_service_id"
  add_index "user_services", ["user_id"], name: "index_user_services_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
