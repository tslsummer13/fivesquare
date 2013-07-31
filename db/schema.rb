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

ActiveRecord::Schema.define(version: 20130731161831) do

  create_table "businesses", force: true do |t|
    t.string  "name"
    t.string  "yelp_url"
    t.integer "neighborhood_id"
    t.string  "image_url"
    t.string  "address"
  end

  create_table "lines", force: true do |t|
    t.string "color"
  end

  create_table "neighborhoods", force: true do |t|
    t.string "name"
    t.text   "history"
    t.text   "demographics"
    t.string "image_url"
    t.string "center"
  end

  create_table "stations", force: true do |t|
    t.string  "address"
    t.integer "neighborhood_id"
    t.string  "name"
  end

  create_table "stops", force: true do |t|
    t.integer "line_id"
    t.integer "station_id"
  end

end
