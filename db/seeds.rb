#require "faker"
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
Building.destroy_all
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
Battery.destroy_all
([
100.times do
    battery = Battery.new(
        buildingType: ["Residential", "Commercial", "Corporate", "Hybrid"].sample,
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

#Seeding for Address table from addresses.json file containing 100 addresses
#Create Address object to define variables coming from json file 
require 'json'
file = File.read('./db/addresses.json')
data_hash = JSON.parse(file)
Address.destroy_all
i = 0
99.times do
    number_and_street1 = data_hash['addresses'].fetch(i)['address1']
    city1 = data_hash['addresses'].fetch(i)['city']
    postal_code1 = data_hash['addresses'].fetch(i)['postalCode']
    Address.create!(
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
i = i + 1    
end

