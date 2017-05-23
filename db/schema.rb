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

ActiveRecord::Schema.define(version: 20170523132250) do

  create_table "applicant_addresses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "Address_Line_1"
    t.string   "Address_Line_2"
    t.string   "Address_Line_3"
    t.integer  "Postal_Code"
    t.integer  "applicant_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["applicant_id"], name: "index_applicant_addresses_on_applicant_id", using: :btree
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

  create_table "applicant_personal_details", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "Surname"
    t.string   "First_Name"
    t.string   "Middle_Name"
    t.string   "Contact_Number"
    t.string   "Alt_Contact_Number"
    t.integer  "Criminal_Record"
    t.text     "Skills",                 limit: 65535
    t.integer  "Application_Status"
    t.integer  "Number_Of_Dependancies"
    t.integer  "applicant_id"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.index ["applicant_id"], name: "index_applicant_personal_details_on_applicant_id", using: :btree
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

  add_foreign_key "applicant_addresses", "applicants"
  add_foreign_key "applicant_experiences", "applicants"
  add_foreign_key "applicant_personal_details", "applicants"
  add_foreign_key "applicant_references", "applicants"
end
