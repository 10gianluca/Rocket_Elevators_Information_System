class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.date :customer_creation_date
      t.bigint :user_id
      t.bigint :address_id
      t.string :company_name
      t.string :full_name_of_company_contact
      t.string :company_contact_phone
      t.string :email_of_company_contact
      t.text :company_description
      t.string :full_name_of_service_technical_authority
      t.string :technical_authority_phone_for_service
      t.string :technical_manager_email_for_service
      t.belongs_to :user
      t.belongs_to :address
      t.timestamps
    end
    add_foreign_key :customers, :addresses
    add_foreign_key :customers, :users
  end
end
