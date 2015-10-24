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

ActiveRecord::Schema.define(version: 20150922112130) do

  create_table "dance_classes", force: :cascade do |t|
    t.time     "time"
    t.text     "description",    limit: 65535
    t.integer  "dance_style_id", limit: 4
    t.integer  "teacher_id",     limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "dance_classes", ["dance_style_id"], name: "index_dance_classes_on_dance_style_id", using: :btree
  add_index "dance_classes", ["teacher_id"], name: "index_dance_classes_on_teacher_id", using: :btree

  create_table "dance_styles", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "dance_styles_events", force: :cascade do |t|
    t.integer "event_id",       limit: 4
    t.integer "dance_style_id", limit: 4
  end

  add_index "dance_styles_events", ["dance_style_id"], name: "index_dance_styles_events_on_dance_style_id", using: :btree
  add_index "dance_styles_events", ["event_id"], name: "index_dance_styles_events_on_event_id", using: :btree

  create_table "events", force: :cascade do |t|
    t.string   "name",                     limit: 255
    t.datetime "time"
    t.text     "description",              limit: 65535
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "flyer_image_file_name",    limit: 255
    t.string   "flyer_image_content_type", limit: 255
    t.integer  "flyer_image_file_size",    limit: 4
    t.datetime "flyer_image_updated_at"
    t.string   "location",                 limit: 255
    t.string   "cost",                     limit: 255
    t.string   "host",                     limit: 255
    t.datetime "end_time"
  end

  create_table "studios", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.string   "website",     limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
