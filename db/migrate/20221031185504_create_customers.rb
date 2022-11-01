class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.integer :user_id
      t.date :customer_creation_date
      t.string :company_name
      t.string :company_headquarter_address
      t.string :full_name_of_company_contact
      t.string :company_contact_phone
      t.string :email_of_company_contact
      t.text :company_description
      t.string :full_name_of_service_technical_authority
      t.string :technical_authority_phone_for_service
      t.string :technical_manager_email_for_service

      t.timestamps
    end
  end
end
