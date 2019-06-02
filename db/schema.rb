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

ActiveRecord::Schema.define(version: 2019_06_02_013919) do

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
    t.integer "activities_id"
    t.integer "teacher_id"
    t.integer "attendings_id"
    t.integer "memorizationparts_id"
    t.integer "memorizationpage_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activities_id"], name: "index_students_on_activities_id"
    t.index ["attendings_id"], name: "index_students_on_attendings_id"
    t.index ["classroom_id"], name: "index_students_on_classroom_id"
    t.index ["memorizationpage_id"], name: "index_students_on_memorizationpage_id"
    t.index ["memorizationparts_id"], name: "index_students_on_memorizationparts_id"
    t.index ["teacher_id"], name: "index_students_on_teacher_id"
  end

end