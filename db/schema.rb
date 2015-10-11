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

ActiveRecord::Schema.define(version: 20151011084954) do

  create_table "dance_classes", force: :cascade do |t|
    t.time     "time"
    t.text     "description"
    t.integer  "dance_style_id"
    t.integer  "teacher_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "dance_classes", ["dance_style_id"], name: "index_dance_classes_on_dance_style_id"
  add_index "dance_classes", ["teacher_id"], name: "index_dance_classes_on_teacher_id"

  create_table "dance_styles", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "dance_styles_events", force: :cascade do |t|
    t.integer "event_id"
    t.integer "dance_style_id"
  end

  add_index "dance_styles_events", ["dance_style_id"], name: "index_dance_styles_events_on_dance_style_id"
  add_index "dance_styles_events", ["event_id"], name: "index_dance_styles_events_on_event_id"

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.datetime "time"
    t.text     "description"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "flyer_image_file_name"
    t.string   "flyer_image_content_type"
    t.integer  "flyer_image_file_size"
    t.datetime "flyer_image_updated_at"
    t.string   "location"
    t.string   "cost"
    t.string   "host"
    t.datetime "end_time"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "studios", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
