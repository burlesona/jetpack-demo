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

ActiveRecord::Schema.define(version: 20130731185239) do

  create_table "companies", force: true do |t|
    t.string "name"
  end

  create_table "companies_samples", id: false, force: true do |t|
    t.integer "company_id"
    t.integer "sample_id"
  end

  add_index "companies_samples", ["company_id", "sample_id"], name: "index_companies_samples_on_company_id_and_sample_id"

  create_table "samples", force: true do |t|
    t.string   "name"
    t.integer  "value"
    t.boolean  "enabled"
    t.text     "description"
    t.date     "the_date"
    t.time     "the_time"
    t.datetime "the_datetime"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "widgets", force: true do |t|
    t.string  "name"
    t.integer "sample_id"
  end

end
