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

ActiveRecord::Schema.define(version: 20131202153522) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "activities", force: true do |t|
    t.integer  "connection_id", null: false
    t.string   "kind",          null: false
    t.datetime "stamp",         null: false
  end

  add_index "activities", ["connection_id"], name: "index_activities_on_connection_id"

  create_table "admin_users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "connections", force: true do |t|
    t.integer  "device_id",   null: false
    t.string   "ip",          null: false
    t.datetime "start_stamp", null: false
    t.datetime "end_stamp"
  end

  add_index "connections", ["device_id"], name: "index_connections_on_device_id"

  create_table "devices", force: true do |t|
    t.integer  "person_id"
    t.string   "kind"
    t.string   "contact",    null: false
    t.string   "hostname"
    t.string   "mac",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "devices", ["person_id"], name: "index_devices_on_person_id"

  create_table "memberships", force: true do |t|
    t.string   "kind",       null: false
    t.string   "name",       null: false
    t.string   "address",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: true do |t|
    t.integer  "membership_id", null: false
    t.string   "name",          null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "people", ["membership_id"], name: "index_people_on_membership_id"

end
