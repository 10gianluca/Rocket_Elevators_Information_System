class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.bigint :customer_id
      t.string :Address_of_the_building
      t.string :Full_Name_of_the_building_administrator
      t.string :Email_of_the_administrator_of_the_building
      t.string :Phone_number_of_the_building_administrator
      t.string :Full_Name_of_the_technical_contact_for_the_building
      t.string :Technical_contact_email_for_the_building
      t.string :Technical_contact_phone_for_the_building
      t.belongs_to :customer
      
      t.timestamps
    end
    add_foreign_key :buildings, :customers
  end
end
