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

ActiveRecord::Schema.define(version: 20150109090113) do

  create_table "activities", force: true do |t|
    t.string   "subject"
    t.datetime "expired_at"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "anonymous", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "activity_id"
  end

  create_table "fields", force: true do |t|
    t.string   "key_name"
    t.string   "value_name"
    t.integer  "activity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "order_id"
  end

  create_table "results", force: true do |t|
    t.integer  "field_id"
    t.string   "field_value"
    t.integer  "anonymous_id"
    t.integer  "activity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "visitor_id"
  end

  create_table "scenes", force: true do |t|
    t.string   "subject"
    t.text     "content"
    t.string   "photo"
    t.integer  "activity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "visitors", force: true do |t|
    t.integer  "activity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
