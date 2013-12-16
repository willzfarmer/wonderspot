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

# 

ActiveRecord::Schema.define(version: 20131216013856) do

  create_table "friendships", force: true do |t|
    t.integer  "user"
    t.integer  "friend"
    t.boolean  "accepted"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "microposts", force: true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

  create_table "users", force: true do |t|
    #t.integer  "id" 
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "password_hash"
    t.string   "password_salt"
    t.string   "remember_token"
    t.text     "description"
    t.text     "interests"
    t.text     "quotes"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
