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

ActiveRecord::Schema.define(version: 20131112083414) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "branches", force: true do |t|
    t.string   "name",                         null: false
    t.string   "contact_name",                 null: false
    t.string   "email1",                       null: false
    t.string   "email2"
    t.string   "webpage"
    t.string   "phone1",                       null: false
    t.string   "phone2"
    t.string   "fax"
    t.string   "address1",                     null: false
    t.string   "address2",                     null: false
    t.string   "city",                         null: false
    t.string   "state",                        null: false
    t.integer  "zip",                          null: false
    t.string   "country",                      null: false
    t.boolean  "main_branch",  default: false, null: false
    t.text     "description"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "branches", ["company_id"], name: "index_branches_on_company_id", using: :btree

  create_table "comments", force: true do |t|
    t.integer  "user_id"
    t.string   "email",      null: false
    t.text     "comment",    null: false
    t.string   "app_name",   null: false
    t.integer  "company_id", null: false
    t.integer  "branch_id",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["branch_id"], name: "index_comments_on_branch_id", using: :btree
  add_index "comments", ["company_id"], name: "index_comments_on_company_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "companies", force: true do |t|
    t.string   "name",              null: false
    t.string   "contact_name",      null: false
    t.string   "email1",            null: false
    t.string   "email2"
    t.string   "webpage"
    t.string   "phone1",            null: false
    t.string   "phone2"
    t.string   "fax"
    t.string   "address1",          null: false
    t.string   "address2",          null: false
    t.string   "city",              null: false
    t.string   "state",             null: false
    t.integer  "zip",               null: false
    t.string   "country",           null: false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "dogs", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "error_reports", force: true do |t|
    t.integer  "user_id"
    t.string   "controller_name"
    t.string   "action_name"
    t.string   "line_number"
    t.string   "referrer_url"
    t.string   "original_path"
    t.string   "environment"
    t.integer  "branch_id"
    t.integer  "company_id"
    t.text     "description"
    t.text     "backtrace"
    t.datetime "error_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "error_reports", ["branch_id"], name: "index_error_reports_on_branch_id", using: :btree
  add_index "error_reports", ["company_id"], name: "index_error_reports_on_company_id", using: :btree
  add_index "error_reports", ["user_id"], name: "index_error_reports_on_user_id", using: :btree

  create_table "roles", force: true do |t|
    t.string   "name",                          null: false
    t.boolean  "protected",     default: false, null: false
    t.boolean  "super_admin",   default: false, null: false
    t.boolean  "company_admin", default: false, null: false
    t.boolean  "branch_admin",  default: false, null: false
    t.boolean  "super_manager", default: false, null: false
    t.boolean  "manager",       default: false, null: false
    t.boolean  "routes_admin",  default: false, null: false
    t.boolean  "seller",        default: false, null: false
    t.boolean  "secretary",     default: false, null: false
    t.boolean  "driver",        default: false, null: false
    t.boolean  "client",        default: false, null: false
    t.boolean  "guess",         default: false, null: false
    t.boolean  "other",         default: false, null: false
    t.text     "description",                   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name",                            null: false
    t.string   "last_name",                             null: false
    t.string   "phone1",                                null: false
    t.string   "phone2"
    t.string   "fax"
    t.string   "address1",                              null: false
    t.string   "address2"
    t.string   "city",                                  null: false
    t.string   "state",                                 null: false
    t.integer  "zip",                                   null: false
    t.string   "country",                               null: false
    t.integer  "company_id",                            null: false
    t.integer  "branch_id",                             null: false
    t.integer  "role_id",                               null: false
    t.boolean  "active",                 default: true, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "username",               default: "",   null: false
    t.string   "email",                  default: "",   null: false
    t.string   "encrypted_password",     default: "",   null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "authentication_token"
  end

  add_index "users", ["authentication_token"], name: "index_users_on_authentication_token", unique: true, using: :btree
  add_index "users", ["branch_id"], name: "index_users_on_branch_id", using: :btree
  add_index "users", ["company_id"], name: "index_users_on_company_id", using: :btree
  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["role_id"], name: "index_users_on_role_id", using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

end
