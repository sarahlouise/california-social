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

ActiveRecord::Schema.define(version: 20150427072337) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string   "date"
    t.string   "time"
    t.string   "about"
    t.integer  "supperclub_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "name"
  end

  add_index "events", ["supperclub_id"], name: "index_events_on_supperclub_id", using: :btree

  create_table "supperclubs", force: :cascade do |t|
    t.string   "name"
    t.text     "about"
    t.string   "location"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "website"
    t.string   "email"
    t.integer  "exclusivity"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "events", "supperclubs"
end
