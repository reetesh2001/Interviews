# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_07_15_124017) do
  create_table "candidates", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.string "role"
    t.string "hr_id"
    t.string "qualification"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "college"
    t.integer "experience"
    t.string "company"
    t.string "technology"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "hr_id"
  end

  create_table "hrs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "status"
    t.string "phone_number"
    t.string "password_digest"
  end

  create_table "intervs", force: :cascade do |t|
    t.string "status"
    t.string "feedback"
    t.integer "round"
    t.datetime "interview_time"
    t.integer "hr_id"
    t.integer "employee_id"
    t.integer "candidate_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "status"
    t.integer "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
