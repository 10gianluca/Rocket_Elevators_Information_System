class CreateBatteries < ActiveRecord::Migration[5.2]
  def change
    create_table :batteries do |t|
      t.bigint :building_id
      t.string :buildingType
      t.string :status
      t.integer :employeeId
      t.datetime :dateofcomissioning
      t.datetime :dateoflastinspection
      t.string :certificationofops
      t.string :information
      t.string :notes
      t.belongs_to :building

      t.timestamps
    end
    add_foreign_key :batteries, :buildings
  end
end
