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

ActiveRecord::Schema.define(:version => 20121118040945) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.boolean  "super_duper",            :default => false
    t.string   "logo_url"
    t.string   "company_name"
    t.string   "phone"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "postal"
    t.string   "website"
    t.string   "twitter"
    t.string   "facebook"
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "customers", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "source"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "admin_user_id"
    t.string   "email"
    t.string   "email2"
    t.string   "phone"
    t.string   "phone2"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "postal"
    t.string   "lat"
    t.string   "lng"
    t.integer  "sqft"
    t.integer  "rooms"
    t.boolean  "has_pets"
    t.boolean  "has_stairs"
    t.date     "last_service_date"
    t.float    "latitude"
    t.float    "longitude"
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
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "admin_user_id"
  end

  create_table "leads", :force => true do |t|
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
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
    t.integer  "admin_user_id"
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
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "admin_user_id"
    t.integer  "customer_id"
  end

end
