class CreateFactQuoteTable < ActiveRecord::Migration[5.2]
    def change
      create_table :users do |t|
        t.integer :creation_date
        t.string :company_name
        t.string :contact_full_name_of_the_main_contact
        t.string :email_of_the_main_contact
        t.integer :nbelevators
        t.string :customer_city
        
        t.timestamps
      end
    end
  end