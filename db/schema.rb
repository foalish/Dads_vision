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

ActiveRecord::Schema.define(version: 20140222201002) do

  create_table "coursenames", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.string   "institutiontype"
    t.string   "institution"
    t.string   "ftpt"
    t.string   "duration"
    t.string   "dept"
    t.string   "course"
    t.string   "code"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employers", force: true do |t|
    t.string   "category"
    t.string   "type"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "sub_category"
  end

  create_table "institcourses", force: true do |t|
    t.integer  "institution_id", null: false
    t.integer  "course_id",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "institutions", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", force: true do |t|
    t.string   "category"
    t.string   "type"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "sub_category"
  end

  create_table "searches", force: true do |t|
    t.string   "keywords"
    t.integer  "institution_id"
    t.integer  "coursename_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.string   "password_digest"
    t.boolean  "admin",           default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
