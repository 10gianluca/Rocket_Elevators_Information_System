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

ActiveRecord::Schema.define(version: 2022_10_27_131316) do

  create_table "quotes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "buildingType"
    t.string "residential_apartment"
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
    t.string "product_line"
    t.integer "priceElevator"
    t.integer "totalPrice"
    t.integer "installation_fees"
    t.integer "final_price"
  end

end