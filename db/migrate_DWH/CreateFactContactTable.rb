class CreateFactQuoteTable < ActiveRecord::Migration[5.2]
    def change
      create_table :users do |t|
        t.integer :contactid
        t.integer :creation_date
        t.string :company_name
        t.string :email
        t.string :project_name
  
        t.timestamps
      end
    end
  end