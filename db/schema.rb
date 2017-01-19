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

ActiveRecord::Schema.define(version: 20170119063944) do

  create_table "employees", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "shop_id"
    t.string   "employee_username"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["shop_id"], name: "index_employees_on_shop_id", using: :btree
  end

  create_table "owners", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "owner_name"
    t.string   "owner_phone_number"
    t.string   "owner_email_address"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "shops", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "owner_id"
    t.string   "shop_name"
    t.string   "shop_address"
    t.integer  "shop_postcode"
    t.string   "shop_phone_number"
    t.string   "shop_other_phone_number"
    t.string   "shop_fax_number"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["owner_id"], name: "index_shops_on_owner_id", using: :btree
  end

  add_foreign_key "employees", "shops"
  add_foreign_key "shops", "owners"
end
