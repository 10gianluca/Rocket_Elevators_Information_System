require "faker"
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
bulding = Building.destroy_all
([
100.times do
    full_address = Faker::Address.full_address
    name = Faker::Name.name 
    email = Faker::Internet.email
    phone1 = Faker::PhoneNumber.cell_phone,
    name2 = Faker::Name.name 
    email2 = Faker::Internet.email
    phone2 = Faker::PhoneNumber.cell_phone
    building = Building.new(
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
battery = Battery.destroy_all
([
100.times do
    battery = Battery.new(
        buildingType: ["residential", "commercial", "corporate", "hybrid"].sample,
        status: ["Active", "Inactive"].sample,
        employeeId: Faker::Number.number(digits: 5),
        dateofcomissioning: Faker::Date.in_date_period,
        dateoflastinspection: Faker::Date.in_date_period,
        certificationofops: Faker::Lorem.sentence,
        information: Faker::Lorem.sentence,
        notes: Faker::Lorem.sentence
        )
        battery.save
    end
])
100.times do
    BuildingsDetail.create!(
        
    InformationKey: Faker::Lorem.sentence,
    Value: Faker::Lorem.sentence
    )
end
100.times do
column = Column.create!(
    BatteryID: Faker::Number.number(digits: 5),
    Number_of_floors_served: Faker::Number.number(digits: 10),
    Status: ['Active', 'Inactive'].sample,
    Type: ['residential', 'commercial', 'corporate', 'hybrid'].sample,
    Information: Faker::Lorem.sentence,
    Notes: Faker::Lorem.sentence
        )
end

elevator = Elevator.destroy_all
([
50.times do
elevator = Elevator.create!(
    columnID: Faker::Number.number(digits: 10),
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
end
])
