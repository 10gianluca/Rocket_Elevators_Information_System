# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
EmployeeList.destroy_all

EmployeeList.create!([{
  title: "Gopher",
  first_name: "Mathieu",
  last_name: "Houde",
  email: "mathieu.houde@codeboxx.biz"	
  
},

{
    title: "Maximalist",
    first_name: "Patrick ",
    last_name: "Thibault",
    email: "patrick.thibault@codeboxx.biz"		
    
},
{
    title: "Captain",
    first_name: "Francis",
    last_name: "Patry-Jessop",
    email: "francis.patry-jessop@codeboxx.biz"	
    
},
{
    title: "The Man",
    first_name: "David",
    last_name: "Amyot",
    email: "david.amyot@codeboxx.biz"	
    
},
{
    title: "AI Master",
    first_name: "Marie-Ève ",
    last_name: "Goupil",
    email: "marie-eve.goupil@codeboxx.biz"	
},
{
    title: "The Tank",
    first_name: "François",
    last_name: "Boivin",
    email: "francois.boivin@codeboxx.biz"		
    
},
{
    title: "Beard whisperer",
    first_name: "Timothy",
    last_name: "Wever",
    email: "timothy.wever@codeboxx.biz"	
    
},
{
    title: "I <3 Winnipeg",
    first_name: "Kiril",
    last_name: "Kleinerman",
    email: "kiril.kleinerman@codeboxx.biz"		
    
},
{
    title: "Scrums are too early",
    first_name: "Felicia",
    last_name: "Hartono",
    email: "felicia.hartono@codeboxx.biz"		
    
},
{
    title: "They really are.",
    first_name: "Eileen ",
    last_name: "Ai",
    email: "eileen.ai@codeboxx.biz"		
    
}
])


