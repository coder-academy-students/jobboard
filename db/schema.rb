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

ActiveRecord::Schema.define(version: 20160624155332) do

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "website"
    t.string   "contact_name"
    t.string   "contact_phone"
    t.string   "logo"
    t.text     "info"
    t.boolean  "approved"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["user_id"], name: "index_companies_on_user_id"
  end

  create_table "job_skills", force: :cascade do |t|
    t.integer  "job_id"
    t.integer  "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_job_skills_on_job_id"
    t.index ["skill_id"], name: "index_job_skills_on_skill_id"
  end

  create_table "job_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.integer  "company_id"
    t.string   "title"
    t.boolean  "remote"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.date     "closing_date"
    t.string   "status"
    t.integer  "job_type_id"
    t.string   "experience_level"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["company_id"], name: "index_jobs_on_company_id"
    t.index ["job_type_id"], name: "index_jobs_on_job_type_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["name"], name: "index_roles_on_name"
  end

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "icon"
  end

  create_table "student_profiles", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "portfolio"
    t.string   "github"
    t.string   "linkedin"
    t.text     "bio"
    t.string   "image"
    t.string   "phone"
    t.boolean  "available"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_student_profiles_on_user_id"
  end

  create_table "student_skills", force: :cascade do |t|
    t.integer  "student_profile_id"
    t.integer  "skill_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["skill_id"], name: "index_student_skills_on_skill_id"
    t.index ["student_profile_id"], name: "index_student_skills_on_student_profile_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
  end

end
