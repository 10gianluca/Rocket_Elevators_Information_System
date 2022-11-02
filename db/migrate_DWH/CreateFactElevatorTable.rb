class CreateFactQuoteTable < ActiveRecord::Migration[5.2]
    def change
      create_table :users do |t|
        t.integer :serial_number
        t.integer :commissioning_date
        t.integer :buildingid
        t.integer :customerid
        t.string :building_city
  
        t.timestamps
      end
    end
  end