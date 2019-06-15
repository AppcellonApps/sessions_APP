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

ActiveRecord::Schema.define(version: 2019_06_15_075944) do

  create_table "assignments", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.date "deadline"
    t.integer "session_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["session_id"], name: "index_assignments_on_session_id"
  end

  create_table "attendees", force: :cascade do |t|
    t.string "name"
    t.integer "tel_no"
    t.string "email"
    t.string "gender"
    t.string "programming_lang"
    t.integer "session_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["session_id"], name: "index_attendees_on_session_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "description"
    t.integer "session_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["session_id"], name: "index_comments_on_session_id"
  end

  create_table "facilitators", force: :cascade do |t|
    t.string "name"
    t.integer "tel_no"
    t.string "email"
    t.string "gender"
    t.integer "session_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["session_id"], name: "index_facilitators_on_session_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.string "name"
    t.integer "room_no"
    t.string "topic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
