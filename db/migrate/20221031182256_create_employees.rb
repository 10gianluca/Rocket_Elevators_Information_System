class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :firstname
      t.string :lastname
      t.string :title
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
