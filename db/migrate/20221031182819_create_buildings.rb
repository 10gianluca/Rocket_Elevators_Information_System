class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.integer :CustomerID
      t.string :Address_of_the_building
      t.string :Full_Name_of_the_building_administrator
      t.string :Email_of_the_administrator_of_the_building
      t.integer :Phone_number_of_the_building_administrator
      t.string :Full_Name_of_the_technical_contact_for_the_building
      t.string :Technical_contact_email_for_the_building
      t.integer :Technical_contact_phone_for_the_building
      t.timestamps
    end
  end
end
