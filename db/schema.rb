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

ActiveRecord::Schema.define(version: 20131103112413) do

  create_table "introduction_questions", force: true do |t|
    t.integer  "idQuestion"
    t.string   "tag"
    t.text     "question"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personnes", force: true do |t|
    t.string   "familyName"
    t.string   "maiderName"
    t.string   "firstName"
    t.date     "dateOfBirth"
    t.string   "email"
    t.string   "nationality"
    t.string   "civilStatus"
    t.string   "address"
    t.string   "city"
    t.integer  "zipCode"
    t.string   "co"
    t.integer  "privatePhone"
    t.integer  "profPhone"
    t.string   "illnessInsurance"
    t.string   "additionnalInsurance"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
    t.string   "referedBy"
    t.string   "legalCaregiver"
    t.string   "trade"
    t.string   "employer"
    t.string   "employerAddress"
  end

  create_table "surveys", force: true do |t|
    t.integer  "patient_id"
    t.text     "q1"
    t.text     "q2"
    t.text     "q3"
    t.text     "q3a"
    t.text     "q4"
    t.text     "q5"
    t.text     "q6"
    t.text     "q7"
    t.text     "q8"
    t.text     "q8a"
    t.text     "q8b"
    t.text     "q8c"
    t.text     "q8d"
    t.text     "q8e"
    t.text     "q8f"
    t.text     "q8g"
    t.text     "q8h"
    t.text     "q8i"
    t.text     "q8j"
    t.text     "q8k"
    t.text     "q8l"
    t.text     "q9"
    t.text     "q10"
    t.text     "q11"
    t.text     "q12"
    t.text     "q13"
    t.text     "q14"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "surveys", ["patient_id"], name: "index_surveys_on_patient_id", using: :btree

end
