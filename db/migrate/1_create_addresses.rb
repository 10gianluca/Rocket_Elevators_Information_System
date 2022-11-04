class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :type_of_address
      t.string :status
      t.string :entity
      t.string :number_and_street
      t.string :suite_or_apartment
      t.string :city
      t.string :postal_code
      t.string :country
      t.string :notes
      t.belongs_to :customer
      t.belongs_to :building
      



      t.timestamps
    end
    #add_foreign_key :address_id
  end
end
