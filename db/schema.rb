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

ActiveRecord::Schema.define(version: 20161214181644) do

  create_table "assignments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "badges", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "employee_number",     null: false
    t.string   "last_name"
    t.string   "first_name"
    t.string   "middle_initial"
    t.integer  "badge_encode_number"
    t.string   "organizational_id"
    t.string   "status_flag"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "employee_id"
    t.integer  "cc_employee_id"
    t.index ["cc_employee_id"], name: "index_badges_on_cc_employee_id", using: :btree
    t.index ["employee_id"], name: "index_badges_on_employee_id", using: :btree
  end

  create_table "cc_employees", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.date     "ada_cerificate_expiration_date"
    t.date     "adjust_hire_date"
    t.date     "car_pool_expiration_date"
    t.date     "effective_status_change_date"
    t.date     "hire_date"
    t.date     "primary_assignment_expiration_date"
    t.date     "secondary_assignment_expiration_date"
    t.date     "temporary_expiration_date"
    t.date     "temporary_start_date"
    t.date     "termination_date"
    t.integer  "badge_encode_number"
    t.integer  "group_account_id"
    t.integer  "primary_assignment_id"
    t.integer  "secondary_assignment_id"
    t.string   "ada_certificate_number"
    t.string   "car_pool_number"
    t.string   "ccf_mail_code"
    t.string   "department_name"
    t.string   "division_institute"
    t.string   "email_address"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_initial"
    t.string   "name_suffix"
    t.string   "employee_number"
    t.string   "employment_status"
    t.string   "fte"
    t.string   "job_code"
    t.string   "job_title"
    t.string   "mobile_number"
    t.decimal  "monthly_fee",                                        precision: 5, scale: 2
    t.string   "secondary_email"
    t.string   "supervisor_employee_id"
    t.string   "supervisor_first_name"
    t.string   "supervisor_last_name"
    t.string   "valet_code"
    t.text     "notes",                                limit: 65535
    t.datetime "created_at",                                                                 null: false
    t.datetime "updated_at",                                                                 null: false
    t.string   "badge_prox_encode"
    t.string   "form_of_payment"
    t.string   "employment_type"
    t.string   "company"
    t.string   "location"
    t.date     "start_date"
    t.string   "supervisor_email"
    t.string   "job_type"
    t.string   "home_zip_code"
    t.string   "termination_code"
    t.integer  "form_of_payment_id"
    t.string   "primary_shift"
    t.index ["employee_number"], name: "index_cc_employees_on_employee_number", unique: true, using: :btree
    t.index ["form_of_payment_id"], name: "fk_rails_0fa89d3858", using: :btree
    t.index ["group_account_id"], name: "index_cc_employees_on_group_account_id", using: :btree
    t.index ["primary_assignment_id"], name: "fk_rails_d95c1b3121", using: :btree
    t.index ["secondary_assignment_id"], name: "fk_rails_098e716ab8", using: :btree
  end

  create_table "employee_supplements", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.date     "primary_assignment_expiration_date"
    t.date     "secondary_assignment_expiration_date"
    t.date     "temporary_start_date"
    t.date     "temporary_expiration_date"
    t.decimal  "monthly_fee",                                        precision: 5, scale: 2
    t.integer  "group_account_id"
    t.string   "car_pool_number"
    t.date     "car_pool_expiration_date"
    t.string   "ada_certificate_number"
    t.date     "ada_cerificate_expiration_date"
    t.string   "secondary_email"
    t.string   "mobile_number"
    t.text     "notes",                                limit: 65535
    t.string   "valet_code"
    t.datetime "created_at",                                                                 null: false
    t.datetime "updated_at",                                                                 null: false
    t.integer  "employee_id"
    t.index ["employee_id"], name: "index_employee_supplements_on_employee_id", using: :btree
    t.index ["group_account_id"], name: "index_employee_supplements_on_group_account_id", using: :btree
  end

  create_table "employees", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "employee_number"
    t.string   "employee_first_name"
    t.string   "employee_middle_initial"
    t.string   "employee_last_name"
    t.string   "employee_name_suffix"
    t.date     "effective_status_change_date"
    t.date     "termination_date"
    t.string   "employement_status"
    t.date     "hire_date"
    t.date     "adjust_hire_date"
    t.string   "department_name"
    t.string   "job_code"
    t.string   "job_title"
    t.string   "division_institute"
    t.string   "fte"
    t.string   "ccf_mail_code"
    t.string   "email_address"
    t.integer  "badge_encode_number"
    t.string   "supervisor_first_name"
    t.string   "supervisor_last_name"
    t.string   "supervisor_employee_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "employee_supplement_id"
    t.index ["employee_supplement_id"], name: "index_employees_on_employee_supplement_id", using: :btree
  end

  create_table "forms_of_payment", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
  end

  create_table "group_accounts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parking_deductions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "record_type"
    t.string   "employee_number"
    t.string   "process_level"
    t.string   "deduction_code"
    t.decimal  "deduction_amount", precision: 10, scale: 2
    t.date     "pay_end_date"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  create_table "states", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.string   "country"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["abbreviation"], name: "index_states_on_abbreviation", unique: true, using: :btree
    t.index ["name"], name: "index_states_on_name", unique: true, using: :btree
  end

  create_table "vehicle_models", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "manufacturer"
    t.string   "model"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "vehicle_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
  end

  create_table "vehicles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "license_plate_number"
    t.integer  "state_id"
    t.boolean  "temporary_plate"
    t.integer  "year"
    t.integer  "vehicle_model_id"
    t.string   "color"
    t.string   "avi_sticker_number"
    t.string   "parking_lot_sticker_number"
    t.string   "leed_qualified"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "cc_employee_id",             null: false
    t.integer  "vehicle_type_id"
    t.index ["cc_employee_id"], name: "fk_rails_89b166b1b6", using: :btree
    t.index ["state_id"], name: "index_vehicles_on_state_id", using: :btree
    t.index ["vehicle_model_id"], name: "index_vehicles_on_vehicle_model_id", using: :btree
    t.index ["vehicle_type_id"], name: "index_vehicles_on_vehicle_type_id", using: :btree
  end

  create_table "violation_amounts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.decimal  "amount",     precision: 5, scale: 2
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "violation_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "violations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.date     "violation_date"
    t.decimal  "violation_amount",  precision: 5, scale: 2
    t.integer  "violation_type_id"
    t.string   "violation_number"
    t.string   "payment_status"
    t.string   "appeal"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.string   "action"
    t.integer  "cc_employee_id"
    t.index ["cc_employee_id"], name: "fk_rails_b762e3b545", using: :btree
    t.index ["violation_type_id"], name: "index_violations_on_violation_type_id", using: :btree
  end

  add_foreign_key "badges", "cc_employees"
  add_foreign_key "cc_employees", "assignments", column: "primary_assignment_id"
  add_foreign_key "cc_employees", "assignments", column: "secondary_assignment_id"
  add_foreign_key "cc_employees", "forms_of_payment", column: "form_of_payment_id"
  add_foreign_key "cc_employees", "group_accounts"
  add_foreign_key "employee_supplements", "employees"
  add_foreign_key "employee_supplements", "group_accounts"
  add_foreign_key "employees", "employee_supplements"
  add_foreign_key "vehicles", "cc_employees"
  add_foreign_key "vehicles", "states"
  add_foreign_key "vehicles", "vehicle_models"
  add_foreign_key "vehicles", "vehicle_types"
  add_foreign_key "violations", "cc_employees"
  add_foreign_key "violations", "violation_types"
end
