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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121117190947) do

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.string   "name2"
    t.string   "source"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "emails", :force => true do |t|
    t.string   "email"
    t.integer  "customer_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "invoice_items", :force => true do |t|
    t.integer "invoice_id"
    t.integer "service_type_id"
    t.text    "notes"
    t.integer "price"
  end

  create_table "invoices", :force => true do |t|
    t.integer  "customer_id"
    t.integer  "location_id"
    t.datetime "service_date"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "locations", :force => true do |t|
    t.string   "address"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "postal"
    t.string   "lat"
    t.string   "lng"
    t.integer  "customer_id"
    t.integer  "sqft"
    t.integer  "rooms"
    t.integer  "stories"
    t.boolean  "has_carpeted_stairs"
    t.boolean  "has_pets"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "notes", :force => true do |t|
    t.text     "body"
    t.integer  "customer_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "phone_numbers", :force => true do |t|
    t.string   "number"
    t.string   "type"
    t.integer  "customer_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "service_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
