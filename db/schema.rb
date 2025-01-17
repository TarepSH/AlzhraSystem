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

ActiveRecord::Schema.define(version: 2019_06_11_231624) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attendings", force: :cascade do |t|
    t.date "day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "attendings_students", id: false, force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "attending_id"
    t.index ["attending_id"], name: "index_attendings_students_on_attending_id"
    t.index ["student_id"], name: "index_attendings_students_on_student_id"
  end

  create_table "classrooms", force: :cascade do |t|
    t.string "name"
    t.string "book"
    t.integer "level"
    t.bigint "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teacher_id"], name: "index_classrooms_on_teacher_id"
  end

  create_table "memorizationpages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "memorizationpages_students", id: false, force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "memorizationpage_id"
    t.index ["memorizationpage_id"], name: "index_memorizationpages_students_on_memorizationpage_id"
    t.index ["student_id"], name: "index_memorizationpages_students_on_student_id"
  end

  create_table "memorizationparts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "memorizationparts_students", id: false, force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "memorizationpart_id"
    t.index ["memorizationpart_id"], name: "index_memorizationparts_students_on_memorizationpart_id"
    t.index ["student_id"], name: "index_memorizationparts_students_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.string "fathername"
    t.string "schoolname"
    t.integer "schoolclass"
    t.string "address"
    t.date "dateofbritgh"
    t.integer "age"
    t.integer "mobilephone"
    t.integer "linephone"
    t.integer "point"
    t.bigint "classroom_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "mobilephon2"
    t.index ["classroom_id"], name: "index_students_on_classroom_id"
  end

  create_table "students_trips", id: false, force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "trip_id"
    t.index ["student_id"], name: "index_students_trips_on_student_id"
    t.index ["trip_id"], name: "index_students_trips_on_trip_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trips", force: :cascade do |t|
    t.string "title"
    t.string "place"
    t.date "activistdate"
    t.datetime "startime"
    t.datetime "endingtime"
    t.integer "price"
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
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "classrooms", "teachers"
  add_foreign_key "students", "classrooms"
end
