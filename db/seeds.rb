# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = [
    
    {email: 'mathieu.houde@codeboxx.biz' ,password: '123456' ,emp: true},
    {email: 'patrick.thibault@codeboxx.biz',password: '123456',emp: true},
    {email: 'francis.patry-jessop@codeboxx.biz',password: '123456',emp: true},
    {email: 'david.amyot@codeboxx.biz',password: '123456',emp: true},
    {email: 'marie-eve.goupil@codeboxx.biz',password: '123456',emp: true},
    {email: 'francois.boivin@codeboxx.biz',password: '123456',emp: true},
    {email: 'timothy.wever@codeboxx.biz',password: '123456',emp: true},
    {email: 'kiril.kleinerman@codeboxx.biz',password: '123456',emp: true},
    {email: 'felicia.hartono@codeboxx.biz',password: '123456',emp: true},
    {email: 'eileen.ai@codeboxx.biz',password: '123456',emp: true},
]


employees = [
    
    {user_id: '1' ,lastName: 'Houde' ,firstNname: 'Mathieu' ,title: 'Gopher' },
    {user_id: '2' ,lastName: 'Thibault' ,firstNname: 'Patrick ' ,title: 'Maximalist' },
    {user_id: '3' ,lastName: 'Patry-Jessop' ,firstNname: 'Francis ' ,title: 'Captain' },
    {user_id: '4' ,lastName: 'Amyot' ,firstNname: 'David' ,title: 'The Man' },
    {user_id: '5' ,lastName: 'Goupil' ,firstNname: 'Marie-Ève' ,title: 'AI master' },
    {user_id: '6' ,lastName: 'Boivin' ,firstNname: 'François' ,title: 'The Tank' },
    {user_id: '7' ,lastName: 'Wever' ,firstNname: 'Timothy' ,title: 'Beard whisperer' },
    {user_id: '8' ,lastName: 'Kleinerman' ,firstNname: 'Kiril' ,title: 'I <3 Winnipeg' },
    {user_id: '9' ,lastName: 'Hartono' ,firstNname: 'Felicia' ,title: 'Scrums are too early' },
    {user_id: '10' ,lastName: 'Ai' ,firstNname: 'Eileen' ,title: 'They really are.' },
]

users.each do |user|
    this_user = User.where(
        email: user[:email], 
    ).first_or_initialize

    this_user.update!(
        password: user[:password],
        emp: user[:emp],
    )
    this_user.save
end


Employee.create!(firstNname: 'Mathieu', lastName: 'Houde',title: 'Gopher', user_id: 1 )
Employee.create!(firstNname: 'Patrick', lastName: 'Thibault',title: 'Maximalist', user_id: 2 )
Employee.create!(firstNname: 'Francis', lastName: 'Patry-Jessop',title: 'Captain', user_id: 3 )
Employee.create!(firstNname: 'David', lastName: 'Amyot',title: 'The Man', user_id: 4 )
Employee.create!(firstNname: 'Marie-Ève', lastName: 'Goupil',title: 'AI emp', user_id: 5 )
Employee.create!(firstNname: 'François', lastName: 'Boivin',title: 'The Tank', user_id: 6 )
Employee.create!(firstNname: 'Timothy', lastName: 'Wever',title: 'Beard whisperer', user_id: 7 )
Employee.create!(firstNname: 'Kiril', lastName: 'Kleinerman',title: 'I <3 Winnipeg', user_id: 8 )
Employee.create!(firstNname: 'Felicia', lastName: 'Hartono',title: 'Scrums are too early', user_id: 9 )
Employee.create!(firstNname: 'Eileen', lastName: 'Ai',title: 'They really are.', user_id: 10 )
