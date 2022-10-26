class CreateEmployeeLists < ActiveRecord::Migration[5.2]
  def change
    create_table :employee_lists do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.string :email

      t.timestamps
    end
  end
end
