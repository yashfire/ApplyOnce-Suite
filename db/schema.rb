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

ActiveRecord::Schema.define(version: 20170526104621) do

  create_table "applicant_addresses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "Address_Line_1"
    t.string   "Address_Line_2"
    t.string   "Address_Line_3"
    t.integer  "Postal_Code"
    t.integer  "applicant_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "applicant_pm_city_id"
    t.index ["applicant_id"], name: "index_applicant_addresses_on_applicant_id", using: :btree
    t.index ["applicant_pm_city_id"], name: "index_applicant_addresses_on_applicant_pm_city_id", using: :btree
  end

  create_table "applicant_experiences", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "Job_Name"
    t.string   "Company_Name"
    t.string   "Duties"
    t.date     "Start_Date"
    t.date     "End_Date"
    t.integer  "applicant_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["applicant_id"], name: "index_applicant_experiences_on_applicant_id", using: :btree
  end

  create_table "applicant_field_of_interests", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "Field_Of_Interest"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "applicant_field_of_studies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "Field_Of_Study"
    t.date     "Start_Date"
    t.date     "End_date"
    t.integer  "applicant_id"
    t.integer  "applicant_university_id"
    t.integer  "applicant_qual_id"
    t.integer  "applicant_qual_status_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["applicant_id"], name: "index_applicant_field_of_studies_on_applicant_id", using: :btree
    t.index ["applicant_qual_id"], name: "index_applicant_field_of_studies_on_applicant_qual_id", using: :btree
    t.index ["applicant_qual_status_id"], name: "index_applicant_field_of_studies_on_applicant_qual_status_id", using: :btree
    t.index ["applicant_university_id"], name: "index_applicant_field_of_studies_on_applicant_university_id", using: :btree
  end

  create_table "applicant_foi_programs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "applicant_id"
    t.integer  "applicant_program_interest_id"
    t.integer  "applicant_field_of_interest_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["applicant_field_of_interest_id"], name: "index_applicant_foi_programs_on_applicant_field_of_interest_id", using: :btree
    t.index ["applicant_id"], name: "index_applicant_foi_programs_on_applicant_id", using: :btree
    t.index ["applicant_program_interest_id"], name: "index_applicant_foi_programs_on_applicant_program_interest_id", using: :btree
  end

  create_table "applicant_genders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "Gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "applicant_marital_statuses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "Marital_Status"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "applicant_nationalities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "Nationality"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "applicant_p_municipalities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "applicant_province_id"
    t.string   "Municipality_Name"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["applicant_province_id"], name: "index_applicant_p_municipalities_on_applicant_province_id", using: :btree
  end

  create_table "applicant_personal_details", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "Surname"
    t.string   "First_Name"
    t.string   "Middle_Name"
    t.string   "Contact_Number"
    t.string   "Alt_Contact_Number"
    t.integer  "Criminal_Record"
    t.text     "Skills",                      limit: 65535
    t.integer  "Application_Status"
    t.integer  "Number_Of_Dependancies"
    t.integer  "applicant_id"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.integer  "applicant_race_id"
    t.integer  "applicant_gender_id"
    t.integer  "applicant_marital_status_id"
    t.integer  "applicant_nationality_id"
    t.index ["applicant_gender_id"], name: "index_applicant_personal_details_on_applicant_gender_id", using: :btree
    t.index ["applicant_id"], name: "index_applicant_personal_details_on_applicant_id", using: :btree
    t.index ["applicant_marital_status_id"], name: "index_applicant_personal_details_on_applicant_marital_status_id", using: :btree
    t.index ["applicant_nationality_id"], name: "index_applicant_personal_details_on_applicant_nationality_id", using: :btree
    t.index ["applicant_race_id"], name: "index_applicant_personal_details_on_applicant_race_id", using: :btree
  end

  create_table "applicant_pm_cities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "applicant_p_municipality_id"
    t.string   "City_Name"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["applicant_p_municipality_id"], name: "index_applicant_pm_cities_on_applicant_p_municipality_id", using: :btree
  end

  create_table "applicant_program_interests", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "Program"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "applicant_provinces", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "Province_Name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "applicant_qual_statuses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "Qualification_Status"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "applicant_quals", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "Qualification_Name"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "applicant_races", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "Race"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "applicant_references", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "Contact_Number"
    t.string   "Reference_Name"
    t.string   "Email_address"
    t.string   "Relationship"
    t.integer  "applicant_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["applicant_id"], name: "index_applicant_references_on_applicant_id", using: :btree
  end

  create_table "applicant_universities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "University_Name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "applicants", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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
    t.string   "username"
    t.bigint   "id_number"
    t.index ["email"], name: "index_applicants_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_applicants_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "applicant_addresses", "applicant_pm_cities"
  add_foreign_key "applicant_addresses", "applicants"
  add_foreign_key "applicant_experiences", "applicants"
  add_foreign_key "applicant_field_of_studies", "applicant_qual_statuses"
  add_foreign_key "applicant_field_of_studies", "applicant_quals"
  add_foreign_key "applicant_field_of_studies", "applicant_universities"
  add_foreign_key "applicant_field_of_studies", "applicants"
  add_foreign_key "applicant_foi_programs", "applicant_field_of_interests"
  add_foreign_key "applicant_foi_programs", "applicant_program_interests"
  add_foreign_key "applicant_foi_programs", "applicants"
  add_foreign_key "applicant_p_municipalities", "applicant_provinces"
  add_foreign_key "applicant_personal_details", "applicant_genders"
  add_foreign_key "applicant_personal_details", "applicant_marital_statuses"
  add_foreign_key "applicant_personal_details", "applicant_nationalities"
  add_foreign_key "applicant_personal_details", "applicant_races"
  add_foreign_key "applicant_personal_details", "applicants"
  add_foreign_key "applicant_pm_cities", "applicant_p_municipalities"
  add_foreign_key "applicant_references", "applicants"
end
