json.array! @quote, partial: "quotes/quote", as: :quote

json.extract! quote, :residential_apartment, :residential_floor, :residential_basement, :commercial_business, :commercial_floor, :commercial_basement, :commercial_parking, :commercial_cage, :corporate_companie, :corporate_floor, :corporate_basement, :corporate_parking, :corporate_occupant, :hybrid_business, :hybrid_floor, :hybrid_basement, :hybrid_parking, :hybrid_occupant, :hybrid_hour, :created_at, :updated_at
json.url lead_url(quote, format: :json)