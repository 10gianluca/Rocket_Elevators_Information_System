json.extract! quote, :residential_apartment, :residential_floor, :residential_basement, :commercial_business, :commercial_floor, :commercial_basement, :commercial_parking, :commercial_cage, :corporate_companie, :corporate_floor, :corporate_basement, :corporate_parking, :corporate_occupant, :hybrid_business, :hybrid_floor, :hybrid_basement, :hybrid_parking, :hybrid_occupant, :hybrid_hour, :created_at, :updated_at
json.url lead_url(quote, format: :json)

json.quote @quote do |Quote|
    json.name quote.residential_apartment
    json.name quote.residential_floor
    json.name quote.residential_basement
    json.name quote.commercial_business
    json.name quote.commercial_floor
    json.name quote.commercial_basement
    json.name quote.commercial_parking
    json.name quote.commercial_cage
    json.name quote.corporate_companie
    json.name quote.corporate_floor
    json.name quote.corporate_basement
    json.name quote.corporate_parking
    json.name quote.corporate_occupant
    json.name quote.hybrid_business
    json.name quote.hybrid_floor
    json.name quote.hybrid_basement
    json.name quote.hybrid_parking
    json.name quote.hybrid_occupant
    json.name quote.hybrid_hour
    json.name quote.cage_amount

    json.name quote.price_elevator
    json.name quote.total_price
    json.name quote.installation_fees
    json.name quote.final_price
    json.name quote.created_at
    json.name quote.updated_at
    json.name quote.buildingType
end
