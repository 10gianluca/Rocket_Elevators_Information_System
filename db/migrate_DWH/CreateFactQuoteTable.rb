class CreateFactQuoteTable < ActiveRecord::Migration[5.2]
    def change
      create_table :users do |t|
        t.integer :quoteid
        t.integer :creation
        t.string :company_name
        t.string :email
        t.integer :nbelevator
  
        t.timestamps
      end
    end
  end