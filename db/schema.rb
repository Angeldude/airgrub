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

ActiveRecord::Schema.define(version: 20150731050415) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "produces", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "price_in_cents"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "comments"
    t.integer  "produce_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reviews", ["produce_id"], name: "index_reviews_on_produce_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.boolean  "admin"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
  end

  add_foreign_key "reviews", "produces"
end
