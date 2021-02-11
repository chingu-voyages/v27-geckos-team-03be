# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'faker'
User.destroy_all
Prescription.destroy_all
Medication.destroy_all
AccountabilityPartner.destroy_all 

puts "creating users"
User.create([{
    name: "Vicente",
    username:"Vicente",
    email: "chrisvsanchez@gmail.com",
    password: "123",
    phone: "3476714580",
    profile_pic: Faker::Avatar.image
    },
    {
    name: "Kapre",
    username:"Kapre",
    email: "Kaprev27@gmail.com",
    password: "123",
    phone: "8001111111",
    profile_pic: Faker::Avatar.image
    },
    {
    name: "Lewis",
    username:"Lewis",
    email: "shepherdlewis000@gmail.com",
    password: "123",
    phone: "800000894",
    profile_pic: Faker::Avatar.image
    },
    {
    name: "Sridevi",
    username:"Sridevi",
    email: "sridevips@hotmail.com",
    password: "123",
    phone: "800000224",
    profile_pic: Faker::Avatar.image
    },
    {
    name: "Kohei",
    username:"Kohei",
    email: "tofuredbull@gmail.com",
    password: "123",
    phone: "800000789",
    profile_pic: Faker::Avatar.image}]
    )
    puts "users complete"


    puts "creating medications"
    med1 = Medication.create({
    name: "Levothyroxine",
    description:Faker::Lorem.paragraph
    })
    med2 = Medication.create({
    name: "Lisinopri",
    description:Faker::Lorem.paragraph
    })
    med3 = Medication.create({
    name: "Atorvastatin",            
    description:Faker::Lorem.paragraph})
    med4 = Medication.create({
    name: "Metformin",
    description:Faker::Lorem.paragraph
    })
    med5 =Medication.create({
    name: "Amlodipine",
    description:Faker::Lorem.paragraph
    })
          
puts "medication complete"
puts "creating prescriptions"
Prescription.create([
    {
    tier:"1",
    expiration_date:"01/12/22",
    frequency: "daily",
    medication_id: Medication.all.first.id,
    user_id:User.all.first.id,
},
    {
    tier:"2",
    expiration_date:"02/25/22",
    frequency: "twice a day",
    medication_id: Medication.all.second.id,
    user_id:User.all.second.id,
},
    {
    tier:"3",
    expiration_date:"02/25/22",
    frequency: "three times a day",
    medication_id: Medication.all.third.id,
    user_id:User.all.third.id,
},
    {
    tier:"2",
    expiration_date:"02/26/22",
    frequency: "daily",
    medication_id: Medication.all.fourth.id,
    user_id: User.all.fourth.id,
},
    {
    tier:"3",
    expiration_date:"02/27/22",
    frequency:"twice a day",
    medication_id: Medication.all.fifth.id,
    user_id:User.all.fifth.id,
}]
)
puts " prescriptions compelete"