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

ActiveRecord::Schema.define(version: 20160224215416) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "Concepts_Progresses", id: false, force: :cascade do |t|
    t.integer "progress_id", null: false
    t.integer "concept_id",  null: false
  end

  create_table "concepts", force: :cascade do |t|
    t.string   "name"
    t.text     "content"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "concepts", ["course_id"], name: "index_concepts_on_course_id", using: :btree

  create_table "concepts_progresses", id: false, force: :cascade do |t|
    t.integer "progress_id", null: false
    t.integer "concept_id",  null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "instructor_id"
    t.integer  "subject_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "courses", ["instructor_id"], name: "index_courses_on_instructor_id", using: :btree
  add_index "courses", ["subject_id"], name: "index_courses_on_subject_id", using: :btree

  create_table "courses_students", id: false, force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "course_id",  null: false
  end

  create_table "exercises", force: :cascade do |t|
    t.string   "name"
    t.text     "content"
    t.string   "answer"
    t.integer  "concept_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "exercises", ["concept_id"], name: "index_exercises_on_concept_id", using: :btree

  create_table "exercises_progresses", id: false, force: :cascade do |t|
    t.integer "progress_id", null: false
    t.integer "exercise_id", null: false
  end

  create_table "instructors", force: :cascade do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "progresses", force: :cascade do |t|
    t.integer  "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "progresses", ["student_id"], name: "index_progresses_on_student_id", using: :btree

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "concepts", "courses"
  add_foreign_key "courses", "instructors"
  add_foreign_key "courses", "subjects"
  add_foreign_key "exercises", "concepts"
  add_foreign_key "progresses", "students"
end
