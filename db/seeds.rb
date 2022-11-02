require "faker"
require 'json'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Employee.destroy_all
Employee.create!([{
  title: "Gopher",
  firstname: "Mathieu",
  lastname: "Houde",
  email: "mathieu.houde@codeboxx.biz",
  password: "password"
},
{
    title: "Maximalist",
    firstname: "Patrick ",
    lastname: "Thibault",
    email: "patrick.thibault@codeboxx.biz",
    password: "password"
},
{
    title: "Captain",
    firstname: "Francis",
    lastname: "Patry-Jessop",
    email: "francis.patry-jessop@codeboxx.biz",
    password: "password"
},
{
    title: "The Man",
    firstname: "David",
    lastname: "Amyot",
    email: "david.amyot@codeboxx.biz",
    password: "password"
},
{
    title: "AI Master",
    firstname: "Marie-Ève ",
    lastname: "Goupil",
    email: "marie-eve.goupil@codeboxx.biz",
    password: "password"
},
{
    title: "The Tank",
    firstname: "François",
    lastname: "Boivin",
    email: "francois.boivin@codeboxx.biz",
    password: "password"
},
{
    title: "Beard whisperer",
    firstname: "Timothy",
    lastname: "Wever",
    email: "timothy.wever@codeboxx.biz" ,
    password: "password"
},
{
    title: "I <3 Winnipeg",
    firstname: "Kiril",
    lastname: "Kleinerman",
    email: "kiril.kleinerman@codeboxx.biz",
    password: "password"
},
{
    title: "Scrums are too early",
    firstname: "Felicia",
    lastname: "Hartono",
    email: "felicia.hartono@codeboxx.biz",
    password: "password"
},
{
    title: "They really are.",
    firstname: "Eileen ",
    lastname: "Ai",
    email: "eileen.ai@codeboxx.biz",
    password: "password"
}
])


file = File.read('./db/addresses.json')
data_hash = JSON.parse(file)
Address.destroy_all
i = 0
99.times do
    number_and_street1 = data_hash['addresses'].fetch(i)['address1']
    city1 = data_hash['addresses'].fetch(i)['city']
    postal_code1 = data_hash['addresses'].fetch(i)['postalCode']
    address = Address.create!(
        type_of_address: "Residential",
        status: "Valid",
        entity: "Street",
        number_and_street: number_and_street1,
        suite_or_apartment: "No",
        city: city1,
        postal_code: postal_code1,
        country: "United States",
        notes: "none"
    )
    address.save
i = i + 1    
end


Customer.destroy_all
# Customer.create!

99.times do
    customer = Customer.create!(
        customer_creation_date: Faker::Date.in_date_period,
        company_name: Faker::Company.name,
        #address_id: Faker::Address.full_address,
        full_name_of_company_contact: Faker::Name.name,
        company_contact_phone: Faker::PhoneNumber.cell_phone,
        email_of_company_contact: Faker::Internet.email,
        company_description: Faker::Lorem.sentence,
        full_name_of_service_technical_authority: Faker::Name.name,
        technical_authority_phone_for_service: Faker::PhoneNumber.cell_phone,
        technical_manager_email_for_service: Faker::Internet.email
        )
        customer.save
end


Building.destroy_all
([
99.times do
    full_address = Faker::Address.full_address
    name = Faker::Name.name 
    email = Faker::Internet.email
    phone1 = Faker::PhoneNumber.cell_phone
    name2 = Faker::Name.name 
    email2 = Faker::Internet.email
    phone2 = Faker::PhoneNumber.cell_phone
    building = Building.create!(
        Address_of_the_building: full_address,
        Full_Name_of_the_building_administrator: name,
        Email_of_the_administrator_of_the_building: email,
        Phone_number_of_the_building_administrator: phone1,
        Full_Name_of_the_technical_contact_for_the_building: name2,
        Technical_contact_email_for_the_building: email2,
        Technical_contact_phone_for_the_building: phone2
    )
    building.save
end
])


BuildingsDetail.destroy_all
# BuildingsDetail.create!
([
99.times do
    building_detail = BuildingsDetail.create!(
        InformationKey: Faker::Lorem.sentence,
        Value: Faker::Lorem.sentence
        )
        building_detail.save
end
])

Battery.destroy_all
# Battery.create!
([
99.times do
    battery = Battery.create!(
        buildingType: ["residential", "commercial", "corporate", "hybrid"].sample,
        status: ["Active", "Inactive"].sample,
        employeeId: Faker::Number.number(digits: 1),
        dateofcomissioning: Faker::Date.in_date_period,
        dateoflastinspection: Faker::Date.in_date_period,
        certificationofops: Faker::Lorem.sentence,
        information: Faker::Lorem.sentence,
        notes: Faker::Lorem.sentence
        )
        battery.save
end
])




Column.destroy_all
# Column.create!
([
99.times do
    column = Column.create!(
        # BatteryID: Faker::Number.number(digits: 5),
        Number_of_floors_served: Faker::Number.number(digits: 10),
        Status: ['Active', 'Inactive'].sample,
        Type: ['residential', 'commercial', 'corporate', 'hybrid'].sample,
        Information: Faker::Lorem.sentence,
        Notes: Faker::Lorem.sentence
    )
    column.save
end
])

Elevator.destroy_all
# Elevator.create!
([
99.times do
    elevator = Elevator.create!(
        # columnID: Faker::Number.number(digits: 10),
        serialNumber: Faker::Number.number(digits: 10),
        model:Faker::Lorem.word,
        status: ['Active', 'Inactive'].sample,
        inspectionCertificate: Faker::Name.name,
        commissioningDate: Faker::Date.between(from: '2022-01-01', to: '2022-12-31'),
        lastInspection: Faker::Date.between(from: '2022-01-01', to: '2022-12-31'),
        elevatorType: ['residential', 'commercial', 'corporate', 'hybrid'].sample,
        information: Faker::Lorem.sentence,
        notes: Faker::Lorem.sentence
    )
    elevator.save
end
])

Quote.destroy_all
([

99.times do
    quote = Quote.create!(
        buildingType: ["Residential", "Commercial", "Corporate", "Hybrid"].sample,
        residential_apartment: Faker::Number.number(digits:2),
        residential_floor: Faker::Number.number(digits: 1),
        residential_basement: Faker::Number.number(digits:1),
        commercial_business: Faker::Number.number(digits:1),
        commercial_floor: Faker::Number.number(digits:1),
        commercial_basement: Faker::Number.number(digits:1),
        commercial_parking: Faker::Number.number(digits:1),
        commercial_cage: Faker::Number.number(digits:1),
        corporate_companie: Faker::Number.number(digits:1),
        corporate_floor: Faker::Number.number(digits:1),
        corporate_basement: Faker::Number.number(digits:1),
        corporate_parking: Faker::Number.number(digits:1),
        corporate_occupant: Faker::Number.number(digits:1),
        hybrid_business: Faker::Number.number(digits:1),
        hybrid_floor: Faker::Number.number(digits:1),
        hybrid_basement: Faker::Number.number(digits:1),
        hybrid_parking: Faker::Number.number(digits:1),
        hybrid_occupant: Faker::Number.number(digits:1),
        hybrid_hour: Faker::Number.number(digits:1),
        cage_amount: Faker::Number.number(digits:1),
        standard_line: Faker::Number.number(digits:1),
        premium_line: Faker::Number.number(digits:1),
        excelium_line: Faker::Number.number(digits:1),
        price_elevator: Faker::Number.number(digits:6),
        total_price: Faker::Number.number(digits:6),
        installation_fees: Faker::Number.number(digits:6),
        final_price: Faker::Number.number(digits:6),
        )
        quote.save
    end
])

#Seeding for Leads table
# Lead.destroy_all
# Lead.create!([{
#     full_name: "Joe Bloe",
#     company_name: "Joe's Company",
#     email: "joeblo@email.com",
#     phone: "(514) 123-4567",
#     project_name: "Joe's project", 
#     project_description: "Integrating elevators in residential building",
#     department: "Residential",
#     message: "Elevators are a great tool for going to different floors.",
#     attached_file: "none",
#     date: "2022-10-31"
# },
# {
#     full_name: "Max Relax",
#     company_name: "Max Is Chill",
#     email: "maxrelax@gmail.com",
#     phone: "(438) 987-6543",
#     project_name: "Max's project", 
#     project_description: "Integrating elevators in corporate building",
#     department: "Corporate",
#     message: "Elevators are so much better than taking the stairs.",
#     attached_file: "none",
#     date: "2022-5-22"
# },
# {
#     full_name: "Sam Smith",
#     company_name: "Singin n Dancin",
#     email: "samsmith@yahoo.com",
#     phone: "(450) 243-4765",
#     project_name: "Sam's project", 
#     project_description: "Repairing elevators in corporate building",
#     department: "Corporate",
#     message: "I need my broken elevators to be repaired.",
#     attached_file: "none",
#     date: "2022-11-1"
# },
# {
#     full_name: "Julia Roberts",
#     company_name: "Roberts & co",
#     email: "juliaroberts@msn.com",
#     phone: "(418) 654-3278",
#     project_name: "Julia's project", 
#     project_description: "Repairing elevator in residential building",
#     department: "Residential",
#     message: "My elevator broke at home and now I take the stairs.",
#     attached_file: "none",
#     date: "2022-10-17"
# },
# {
#     full_name: "Dua Lipa",
#     company_name: "Dua's Lipa",
#     email: "dualipa@cool.com",
#     phone: "(514) 910-3579",
#     project_name: "Dua's project",
#     project_description: "Integrating elevators in residential building",
#     department: "Residential",
#     message: "I want an elevator in my new mansion.",
#     attached_file: "none",
#     date: "2022-8-14"
# }])

#Seeding for Address table from addresses.json file containing 100 addresses
#Create Address object to define variables coming from json file 


