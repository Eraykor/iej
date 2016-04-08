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

ActiveRecord::Schema.define(version: 20160408130449) do

  create_table "dispositifs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "organization"
    t.integer  "phone"
    t.string   "email"
    t.string   "id_number"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.boolean  "admin"
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.string   "adress"
    t.integer  "zip_code"
    t.string   "city"
    t.string   "parent_organization"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "organization_id"
  end

  create_table "participants", force: :cascade do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.date     "birth_date"
    t.string   "place_of_birth"
    t.string   "id_number"
    t.string   "adress"
    t.integer  "zip_code"
    t.string   "city"
    t.integer  "phone"
    t.integer  "mobile"
    t.string   "affiliation_process"
    t.date     "entry_process"
    t.date     "expected_process"
    t.text     "entry_solution"
    t.text     "output_solution"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.string   "participant"
    t.string   "email"
    t.string   "document"
    t.string   "document_file_name"
    t.string   "document_content_type"
    t.integer  "document_file_size"
    t.datetime "document_updated_at"
    t.integer  "employee_id"
    t.integer  "dispositif_id"
  end

end
