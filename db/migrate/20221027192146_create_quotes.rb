class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.string :buildingType
      t.integer :residential_apartment
      t.integer :residential_floor
      t.integer :residential_basement
      t.integer :commercial_business
      t.integer :commercial_floor
      t.integer :commercial_basement
      t.integer :commercial_parking
      t.integer :commercial_cage
      t.integer :corporate_companie
      t.integer :corporate_floor
      t.integer :corporate_basement
      t.integer :corporate_parking
      t.integer :corporate_occupant
      t.integer :hybrid_business
      t.integer :hybrid_floor
      t.integer :hybrid_basement
      t.integer :hybrid_parking
      t.integer :hybrid_occupant
      t.integer :hybrid_hour
      t.integer :cage_amount
      t.string :QualityType
      t.integer :price_elevator
      t.integer :total_price
      t.integer :installation_fees
      t.integer :final_price

      t.timestamps
    end
  end
end
