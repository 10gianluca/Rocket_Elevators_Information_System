# frozen_string_literal: true
class DeviseCreateUsers < ActiveRecord::Migration[5.2]
    def change
      create_table :users do |t|
        t.string :title
        t.string :first_name
        t.string :last_name
        t.string :email
        t.string :encrypted_password
  
        t.timestamps
      end
      #add_foreign_key :use
    end
  end
  