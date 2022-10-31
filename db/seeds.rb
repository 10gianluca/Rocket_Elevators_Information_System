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
x = 0
([
100.times do
    x = x + 1
    full_address = Faker::Address.full_address
    name = Faker::Name.name 
    email = Faker::Internet.email
    phone = Faker::PhoneNumber.cell_phone_in_e164,
    name2 = Faker::Name.name 
    email2 = Faker::Internet.email
    phone2 = Faker::PhoneNumber.cell_phone_in_e164,
    building = Building.new(
        CustomerID: x,
        Address_of_the_building: full_address,
        Full_Name_of_the_building_administrator: name,
        Email_of_the_administrator_of_the_building: email,
        Phone_number_of_the_building_administrator: phone,
        Full_Name_of_the_technical_contact_for_the_building: name2,
        Technical_contact_email_for_the_building: email2,
        Technical_contact_phone_for_the_building: phone2
    )
    building.save
end
])