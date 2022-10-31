class CreateElevators < ActiveRecord::Migration[5.2]
  def change
    create_table :elevators do |t|
      t.integer :columnID
      t.string :serialNumber
      t.boolean :model
      t.boolean :type
      t.string :status
      t.datetime :commissioningDate
      t.datetime :lastInspection
      t.string :inspectionCertificate
      t.string :information
      t.string :notes

      t.timestamps
    end
  end
end
