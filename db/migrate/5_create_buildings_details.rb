class CreateBuildingsDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings_details do |t|
      t.bigint :building_id
      t.string :InformationKey
      t.string :Value
      t.belongs_to :building

      t.timestamps
    end
    add_foreign_key :buildings_details, :buildings
  end
end
