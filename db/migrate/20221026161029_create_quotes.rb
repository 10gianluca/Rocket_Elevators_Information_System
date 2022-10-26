class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.string :buildingType
      t.string :residential-apartment
      t.integer :residential-floor
      t.integer :residential-basement
      t.integer :commercial-business
      t.integer :commercial-floor
      t.integer :commercial-basement
      t.integer :commercial-parking
      t.integer :commercial-cage
      t.integer :corporate-companie
      t.integer :corporate-floor
      t.integer :corporate-basement
      t.integer :corporate-parking
      t.integer :corporate-occupant
      t.integer :hybrid-business
      t.integer :hybrid-floor
      t.integer :hybrid-basement
      t.integer :hybrid-parking
      t.integer :hybrid-occupant
      t.integer :hybrid-hour
      t.string :cage-amount
      t.string :integer
      t.string :standard
      t.string :premium
      t.string :excelium
    end
  end
end
