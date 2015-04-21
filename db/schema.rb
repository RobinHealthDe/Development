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

ActiveRecord::Schema.define(version: 20150421161922) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "citext"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], :name => "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], :name => "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "contact_infos", force: :cascade do |t|
    t.string   "first_name", limit: 64,  null: false
    t.string   "last_name",  limit: 64,  null: false
    t.string   "email",      limit: 254, null: false
    t.string   "phone",      limit: 15
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["email"], :name => "index_contact_infos_on_email", :unique => true
  end

  create_table "patients", force: :cascade do |t|
    t.integer  "contact_info_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["contact_info_id"], :name => "fk__patients_contact_info_id"
    t.index ["contact_info_id"], :name => "index_patients_on_contact_info_id", :unique => true
    t.foreign_key ["contact_info_id"], "contact_infos", ["id"], :on_update => :no_action, :on_delete => :no_action, :name => "fk_patients_contact_info_id"
  end

  create_table "inquiries", force: :cascade do |t|
    t.integer  "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], :name => "fk__inquiries_patient_id"
    t.index ["patient_id"], :name => "index_inquiries_on_patient_id", :unique => true
    t.foreign_key ["patient_id"], "patients", ["id"], :on_update => :no_action, :on_delete => :no_action, :name => "fk_inquiries_patient_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 254,             null: false
    t.string   "encrypted_password",                             null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["email"], :name => "index_users_on_email", :unique => true
    t.index ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  end

end
