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

ActiveRecord::Schema.define(version: 2022_10_31_230406) do

  create_table "addresses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "type_of_address"
    t.string "status"
    t.string "entity"
    t.string "number_and_street"
    t.string "suite_or_apartment"
    t.string "city"
    t.string "postal_code"
    t.string "country"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "batteries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "buildingType"
    t.string "status"
    t.integer "employeeId"
    t.datetime "dateofcomissioning"
    t.datetime "dateoflastinspection"
    t.string "certificationofops"
    t.string "information"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "buildings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "Address_of_the_building"
    t.string "Full_Name_of_the_building_administrator"
    t.string "Email_of_the_administrator_of_the_building"
    t.string "Phone_number_of_the_building_administrator"
    t.string "Full_Name_of_the_technical_contact_for_the_building"
    t.string "Technical_contact_email_for_the_building"
    t.string "Technical_contact_phone_for_the_building"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "buildings_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.integer "BuildingID"
    t.string "InformationKey"
    t.string "Value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "columns", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.integer "BatteryID"
    t.string "Type"
    t.string "Number_of_floors_served"
    t.string "Status"
    t.string "Information"
    t.string "Notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.integer "user_id"
    t.date "customer_creation_date"
    t.string "company_name"
    t.string "company_headquarter_address"
    t.string "full_name_of_company_contact"
    t.string "company_contact_phone"
    t.string "email_of_company_contact"
    t.text "company_description"
    t.string "full_name_of_service_technical_authority"
    t.string "technical_authority_phone_for_service"
    t.string "technical_manager_email_for_service"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "elevators", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "columnID"
    t.string "serialNumber"
    t.string "model"
    t.string "elevatorType"
    t.string "status"
    t.datetime "commissioningDate"
    t.datetime "lastInspection"
    t.string "inspectionCertificate"
    t.string "information"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "title"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leads", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "full_name"
    t.string "company_name"
    t.string "email"
    t.string "phone"
    t.string "project_name"
    t.string "project_description"
    t.string "department"
    t.text "message"
    t.string "attached_file"
    t.string "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quotes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.boolean "residential_type"
    t.boolean "commercial_type"
    t.boolean "corporate_type"
    t.boolean "hybrid_type"
    t.integer "residential_apartment"
    t.integer "residential_floor"
    t.integer "residential_basement"
    t.integer "commercial_business"
    t.integer "commercial_floor"
    t.integer "commercial_basement"
    t.integer "commercial_parking"
    t.integer "commercial_cage"
    t.integer "corporate_companie"
    t.integer "corporate_floor"
    t.integer "corporate_basement"
    t.integer "corporate_parking"
    t.integer "corporate_occupant"
    t.integer "hybrid_business"
    t.integer "hybrid_floor"
    t.integer "hybrid_basement"
    t.integer "hybrid_parking"
    t.integer "hybrid_occupant"
    t.integer "hybrid_hour"
    t.integer "cage_amount"
    t.boolean "standard_line"
    t.boolean "premium_line"
    t.boolean "excelium_line"
    t.integer "price_elevator"
    t.integer "total_price"
    t.integer "installation_fees"
    t.integer "final_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "title"
    t.string "email"
    t.string "encrypted_password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
