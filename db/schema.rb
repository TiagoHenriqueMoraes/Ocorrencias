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

ActiveRecord::Schema.define(version: 2018_10_14_181223) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.bigint "turn_id"
    t.bigint "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_employees_on_team_id"
    t.index ["turn_id"], name: "index_employees_on_turn_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "description"
    t.integer "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guidelines", force: :cascade do |t|
    t.string "item"
    t.bigint "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_guidelines_on_group_id"
  end

  create_table "occurrences", force: :cascade do |t|
    t.integer "status"
    t.string "treatment"
    t.string "description"
    t.bigint "employee_id"
    t.bigint "turn_id"
    t.bigint "team_id"
    t.bigint "user_id"
    t.bigint "guideline_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_occurrences_on_employee_id"
    t.index ["guideline_id"], name: "index_occurrences_on_guideline_id"
    t.index ["team_id"], name: "index_occurrences_on_team_id"
    t.index ["turn_id"], name: "index_occurrences_on_turn_id"
    t.index ["user_id"], name: "index_occurrences_on_user_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_teams_on_user_id"
  end

  create_table "turns", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "kind"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "employees", "teams"
  add_foreign_key "employees", "turns"
  add_foreign_key "guidelines", "groups"
  add_foreign_key "occurrences", "employees"
  add_foreign_key "occurrences", "guidelines"
  add_foreign_key "occurrences", "teams"
  add_foreign_key "occurrences", "turns"
  add_foreign_key "occurrences", "users"
  add_foreign_key "teams", "users"
end
