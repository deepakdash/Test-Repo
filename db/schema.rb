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

ActiveRecord::Schema.define(:version => 20150725142958) do

  create_table "departments", :force => true do |t|
    t.string   "name"
    t.string   "dep_type"
    t.string   "department_code"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "entitle_discount_details", :force => true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "contact_no"
    t.string   "tax_pan"
    t.string   "specialize"
    t.string   "contact_person"
    t.string   "dept"
    t.string   "designation"
    t.date     "dob"
    t.integer  "rate"
    t.string   "ref_code"
    t.integer  "entitle_discount_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "entitle_discounts", :force => true do |t|
    t.string   "ref_type"
    t.string   "ref_code"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "entitle_incentive_details", :force => true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "contact_no"
    t.string   "tax_pan"
    t.string   "specialize"
    t.string   "contact_person"
    t.string   "dept"
    t.string   "designation"
    t.date     "dob"
    t.integer  "rate"
    t.string   "ref_code"
    t.integer  "entitle_incentive_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "entitle_incentives", :force => true do |t|
    t.string   "ref_type"
    t.string   "ref_code"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "test_names", :force => true do |t|
    t.text     "name"
    t.text     "element"
    t.text     "bio_ref"
    t.text     "unit_mea"
    t.text     "mth_tec"
    t.text     "result"
    t.integer  "test_title_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "test_titles", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.text     "process"
    t.integer  "price"
    t.date     "tat"
    t.text     "remarks"
    t.text     "restriction"
    t.text     "social_note"
    t.integer  "department_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "test_title_code"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,     :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.string   "name"
    t.boolean  "is_admin",               :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
