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

ActiveRecord::Schema.define(version: 2019_06_07_042548) do

  create_table "attendings", force: :cascade do |t|
    t.date "day"
    t.integer "students_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["students_id"], name: "index_attendings_on_students_id"
  end

  create_table "attendings_students", id: false, force: :cascade do |t|
    t.integer "student_id"
    t.integer "attending_id"
    t.index ["attending_id"], name: "index_attendings_students_on_attending_id"
    t.index ["student_id"], name: "index_attendings_students_on_student_id"
  end

  create_table "classrooms", force: :cascade do |t|
    t.string "name"
    t.string "book"
    t.integer "level"
    t.integer "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teacher_id"], name: "index_classrooms_on_teacher_id"
  end

  create_table "memorizationpages", force: :cascade do |t|
    t.string "name"
    t.integer "students_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "student_id"
    t.index ["student_id"], name: "index_memorizationpages_on_student_id"
    t.index ["students_id"], name: "index_memorizationpages_on_students_id"
  end

  create_table "memorizationpages_students", id: false, force: :cascade do |t|
    t.integer "student_id"
    t.integer "memorizationpage_id"
    t.index ["memorizationpage_id"], name: "index_memorizationpages_students_on_memorizationpage_id"
    t.index ["student_id"], name: "index_memorizationpages_students_on_student_id"
  end

  create_table "memorizationparts", force: :cascade do |t|
    t.string "name"
    t.integer "students_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "student_id"
    t.index ["student_id"], name: "index_memorizationparts_on_student_id"
    t.index ["students_id"], name: "index_memorizationparts_on_students_id"
  end

  create_table "memorizationparts_students", id: false, force: :cascade do |t|
    t.integer "student_id"
    t.integer "memorizationpart_id"
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
    t.integer "classroom_id"
    t.integer "memorizationparts_id"
    t.integer "memorizationpage_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "trips_id"
    t.integer "trip_id"
    t.integer "attedning_id"
    t.index ["attedning_id"], name: "index_students_on_attedning_id"
    t.index ["classroom_id"], name: "index_students_on_classroom_id"
    t.index ["memorizationpage_id"], name: "index_students_on_memorizationpage_id"
    t.index ["memorizationparts_id"], name: "index_students_on_memorizationparts_id"
    t.index ["trip_id"], name: "index_students_on_trip_id"
    t.index ["trips_id"], name: "index_students_on_trips_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.integer "classroom_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["classroom_id"], name: "index_teachers_on_classroom_id"
  end

  create_table "trips", force: :cascade do |t|
    t.string "place"
    t.date "activistdate"
    t.datetime "startime"
    t.datetime "endingtime"
    t.integer "price"
    t.integer "students_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.integer "student_id"
    t.index ["student_id"], name: "index_trips_on_student_id"
    t.index ["students_id"], name: "index_trips_on_students_id"
  end

end
