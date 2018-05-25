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

ActiveRecord::Schema.define(version: 20161214220927) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "divisions", force: :cascade do |t|
    t.text     "name"
    t.text     "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.text     "firstname"
    t.text     "lastname"
    t.integer  "room_id"
    t.datetime "hired"
    t.integer  "addedby"
    t.integer  "modifiedby"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "division"
  end

  add_index "employees", ["room_id"], name: "index_employees_on_room_id", using: :btree

  create_table "items", force: :cascade do |t|
    t.string   "room_references"
    t.text     "name"
    t.text     "category"
    t.text     "model"
    t.text     "os"
    t.text     "processor"
    t.text     "assettag"
    t.text     "hostname"
    t.text     "ponumber"
    t.text     "notes"
    t.text     "servicetag"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "room_id"
    t.integer  "addedby"
    t.integer  "modifiedby"
    t.text     "division"
    t.text     "manufacturer"
    t.text     "modelcode"
    t.text     "brand"
    t.text     "assigneduser"
    t.text     "assignedroom"
    t.text     "QATag"
  end

  add_index "items", ["room_id"], name: "index_items_on_room_id", using: :btree

  create_table "rooms", force: :cascade do |t|
    t.text     "name"
    t.text     "location"
    t.text     "description"
    t.integer  "modifiedby"
    t.text     "floor"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "addedby"
    t.text     "division"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
    t.integer  "invitations_count",      default: 0
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["invitation_token"], name: "index_users_on_invitation_token", unique: true, using: :btree
  add_index "users", ["invitations_count"], name: "index_users_on_invitations_count", using: :btree
  add_index "users", ["invited_by_id"], name: "index_users_on_invited_by_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
