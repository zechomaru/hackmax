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

ActiveRecord::Schema.define(version: 20150208162533) do

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.string   "genero"
    t.string   "lenguage"
    t.string   "duration"
    t.string   "summary"
    t.string   "classification"
    t.string   "subtitle"
    t.string   "ext"
    t.date     "release_date"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "reserves", force: :cascade do |t|
    t.string   "status"
    t.integer  "show_id"
    t.integer  "seat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reserves", ["seat_id"], name: "index_reserves_on_seat_id"
  add_index "reserves", ["show_id"], name: "index_reserves_on_show_id"

  create_table "seats", force: :cascade do |t|
    t.integer  "theater_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "seats", ["theater_id"], name: "index_seats_on_theater_id"

  create_table "shows", force: :cascade do |t|
    t.date     "date_show"
    t.time     "time_show"
    t.integer  "movie_id"
    t.integer  "theater_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "shows", ["movie_id"], name: "index_shows_on_movie_id"
  add_index "shows", ["theater_id"], name: "index_shows_on_theater_id"

  create_table "theaters", force: :cascade do |t|
    t.string   "name"
    t.float    "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
