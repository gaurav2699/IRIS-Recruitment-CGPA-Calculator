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

ActiveRecord::Schema.define(version: 2020_10_18_193108) do

  create_table "course_registrations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.integer "roll_no"
    t.string "course_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "student_id"
    t.bigint "course_id"
    t.index ["course_id"], name: "index_course_registrations_on_course_id"
    t.index ["student_id"], name: "index_course_registrations_on_student_id"
  end

  create_table "courses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "course_code"
    t.string "credits"
    t.string "integer"
    t.string "criteria"
    t.integer "aa"
    t.integer "ab"
    t.integer "bb"
    t.integer "bc"
    t.integer "cc"
    t.integer "cd"
    t.integer "dd"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exam_results", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "student_name"
    t.integer "roll_no"
    t.string "course_code"
    t.string "exam_name"
    t.integer "marks_obtained"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "course_id"
    t.bigint "student_id"
    t.index ["course_id"], name: "index_exam_results_on_course_id"
    t.index ["student_id"], name: "index_exam_results_on_student_id"
  end

  create_table "exams", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "course_code"
    t.integer "max_marks"
    t.integer "weightage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "course_id"
    t.index ["course_id"], name: "index_exams_on_course_id"
  end

  create_table "students", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.integer "roll_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "course_registrations", "courses"
  add_foreign_key "course_registrations", "students"
  add_foreign_key "exam_results", "courses"
  add_foreign_key "exam_results", "students"
  add_foreign_key "exams", "courses"
end
