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

ActiveRecord::Schema.define(version: 20140815135625) do

  create_table "events", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "type_action"
    t.datetime "date_action"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", force: true do |t|
    t.string   "name"
    t.string   "instructor"
    t.string   "city"
    t.string   "type"
    t.string   "birthday"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups_people", id: false, force: true do |t|
    t.integer "person_id"
    t.integer "group_id"
  end

  create_table "invites", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.datetime "date_invite"
    t.string   "description"
    t.integer  "person_id"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "city"
    t.string   "phone_number"
    t.string   "role"
    t.string   "status"
    t.string   "group_name"
    t.datetime "birthday"
    t.string   "description"
    t.datetime "date_become_member"
    t.datetime "date_left_membership"
    t.datetime "last_invited_action"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.decimal  "price",      precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "static_pages", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tegs", force: true do |t|
    t.string   "name"
    t.integer  "person_id"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "city"
    t.string   "name"
    t.string   "phone_number"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "birthday"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "email",                  default: "", null: false
  end

  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
