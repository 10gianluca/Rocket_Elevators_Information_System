class CreateColumns < ActiveRecord::Migration[5.2]
  def change
    create_table :columns do |t|
      t.bigint :battery_id
      t.string :Type
      t.string :Number_of_floors_served
      t.string :Status
      t.string :Information
      t.string :Notes
      t.belongs_to :battery
     
      t.timestamps
    end
    add_foreign_key :columns, :batteries
  end
end
