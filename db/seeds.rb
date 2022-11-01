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
  encrypted_password: "password"
},
{
    title: "Maximalist",
    firstname: "Patrick ",
    lastname: "Thibault",
    email: "patrick.thibault@codeboxx.biz",
    encrypted_password: "password"
},
{
    title: "Captain",
    firstname: "Francis",
    lastname: "Patry-Jessop",
    email: "francis.patry-jessop@codeboxx.biz",
    encrypted_password: "password"
},
{
    title: "The Man",
    firstname: "David",
    lastname: "Amyot",
    email: "david.amyot@codeboxx.biz",
    encrypted_password: "password"
},
{
    title: "AI Master",
    firstname: "Marie-Ève ",
    lastname: "Goupil",
    email: "marie-eve.goupil@codeboxx.biz",
    encrypted_password: "password"
},
{
    title: "The Tank",
    firstname: "François",
    lastname: "Boivin",
    email: "francois.boivin@codeboxx.biz",
    encrypted_password: "password"
},
{
    title: "Beard whisperer",
    firstname: "Timothy",
    lastname: "Wever",
    email: "timothy.wever@codeboxx.biz" ,
    encrypted_password: "password"
},
{
    title: "I <3 Winnipeg",
    firstname: "Kiril",
    lastname: "Kleinerman",
    email: "kiril.kleinerman@codeboxx.biz",
    encrypted_password: "password"
},
{
    title: "Scrums are too early",
    firstname: "Felicia",
    lastname: "Hartono",
    email: "felicia.hartono@codeboxx.biz",
    encrypted_password: "password"
},
{
    title: "They really are.",
    firstname: "Eileen ",
    lastname: "Ai",
    email: "eileen.ai@codeboxx.biz",
    encrypted_password: "password"
}
])
battery= Battery.create!(
        type: ['residential', 'commercial', 'corporate', 'hybrid'].sample,
        status: ['Active', 'Inactive'].sample,
        employeeId: Faker::Number.number(digits: 5),
        dateofcommissioning: Faker::Date.between(from: '2022-01-01', to: '2022-12-31'),
        dateoflastinspection: Faker::Date.between(from: '2022-01-01', to: '2022-12-31'),
        certificateofops: Faker::Lorem.sentence,
        information: Faker::Lorem.sentence,
        notes: Faker::Lorem.sentence
        )