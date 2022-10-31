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

ActiveRecord::Schema.define(version: 2022_10_31_185504) do

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

  create_table "employees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "title"
    t.string "email"
    t.string "password"
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
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
