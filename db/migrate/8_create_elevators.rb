class CreateElevators < ActiveRecord::Migration[5.2]
  def change
    create_table :elevators do |t|
      t.bigint :column_id
      t.string :serialNumber
      t.string :model
      t.string :elevatorType
      t.string :status
      t.datetime :commissioningDate
      t.datetime :lastInspection
      t.string :inspectionCertificate
      t.string :information
      t.string :notes
      t.belongs_to :column

      t.timestamps
    end
    add_foreign_key :elevators, :columns
  end
end
