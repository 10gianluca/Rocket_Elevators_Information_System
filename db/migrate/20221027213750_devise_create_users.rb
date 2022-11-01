# frozen_string_literal: true
class DeviseCreateUsers < ActiveRecord::Migration[5.2]
    def change
      create_table :users do |t|
        t.string :firstname
        t.string :lastname
        t.string :title
        t.string :email
        t.string :encrypted_password
  
        t.timestamps
      end
    end
  end
  