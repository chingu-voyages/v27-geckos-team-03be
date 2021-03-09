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
Dosage.destroy_all
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
# user 1
Prescription.create([
{
    hours:[10],
    weekdays:[0,2,4,6],
    medication_id: Medication.all.first.id,
    user_id:User.all.first.id,
},
{
    hours:[9,18],
    weekdays:[0,5],
    medication_id: Medication.all.second.id,
    user_id:User.all.first.id,
},
{
    hours:[7],
    weekdays:[0,1,2,3],
    medication_id: Medication.all.third.id,
    user_id:User.all.first.id,
},
{
    hours:[12,20],
    weekdays:[0,1,2,3,4,5,6],
    medication_id: Medication.all.fourth.id,
    user_id: User.all.first.id,
},
{
    hours:[8, 16],
    weekdays:[0,1,2,3,4,5,6],
    medication_id: Medication.all.fifth.id,
    user_id:User.all.first.id,
}])
#user 2 
Prescription.create([
{
    hours:[10],
    weekdays:[0,2,4,6],
    medication_id: Medication.all.first.id,
    user_id:User.all.second.id,
},
{
    hours:[9,18],
    weekdays:[0,5],
    medication_id: Medication.all.second.id,
    user_id:User.all.second.id,
},
{
    hours:[7],
    weekdays:[0,1,2,3],
    medication_id: Medication.all.third.id,
    user_id:User.all.second.id,
},
{
    hours:[12,20],
    weekdays:[0,1,2,3,4,5,6],
    medication_id: Medication.all.fourth.id,
    user_id: User.all.second.id,
},
{
    hours:[8, 16],
    weekdays:[0,1,2,3,4,5,6],
    medication_id: Medication.all.fifth.id,
    user_id:User.all.second.id,
}])
#user 3 
Prescription.create([
{
    hours:[10],
    weekdays:[0,2,4,6],
    medication_id: Medication.all.first.id,
    user_id:User.all.third.id,
},
{
    hours:[9,18],
    weekdays:[0,5],
    medication_id: Medication.all.second.id,
    user_id:User.all.third.id,
},
{
    hours:[7],
    weekdays:[0,1,2,3],
    medication_id: Medication.all.third.id,
    user_id:User.all.third.id,
},
{
    hours:[12,20],
    weekdays:[0,1,2,3,4,5,6],
    medication_id: Medication.all.fourth.id,
    user_id: User.all.third.id,
},
{
    hours:[8, 16],
    weekdays:[0,1,2,3,4,5,6],
    medication_id: Medication.all.fifth.id,
    user_id:User.all.third.id,
}])
#user 4 
Prescription.create([
{
    hours:[10],
    weekdays:[0,2,4,6],
    medication_id: Medication.all.first.id,
    user_id:User.all.fourth.id,
},
{
    hours:[9,18],
    weekdays:[0,5],
    medication_id: Medication.all.second.id,
    user_id:User.all.fourth.id,
},
{
    hours:[7],
    weekdays:[0,1,2,3],
    medication_id: Medication.all.third.id,
    user_id:User.all.fourth.id,
},
{
    hours:[12,20],
    weekdays:[0,1,2,3,4,5,6],
    medication_id: Medication.all.fourth.id,
    user_id: User.all.fourth.id,
},
{
    hours:[8, 16],
    weekdays:[0,1,2,3,4,5,6],
    medication_id: Medication.all.fifth.id,
    user_id:User.all.fourth.id,
}])
# user 5  
Prescription.create([
{
    hours:[10],
    weekdays:[0,2,4,6],
    medication_id: Medication.all.first.id,
    user_id:User.all.fifth.id,
},
{
    hours:[9,18],
    weekdays:[0,5],
    medication_id: Medication.all.second.id,
    user_id:User.all.fifth.id,
},
{
    hours:[7],
    weekdays:[0,1,2,3],
    medication_id: Medication.all.third.id,
    user_id:User.all.fifth.id,
},
{
    hours:[12,20],
    weekdays:[0,1,2,3,4,5,6],
    medication_id: Medication.all.fourth.id,
    user_id: User.all.fifth.id,
},
{
    hours:[8, 16],
    weekdays:[0,1,2,3,4,5,6],
    medication_id: Medication.all.fifth.id,
    user_id:User.all.fifth.id,
}])
puts " prescriptions compelete"
puts "create accountability partners"

AccountabilityPartner.create(
    {patient_id:User.all.second.id,
    partner_id:User.all.third.id,}
)
AccountabilityPartner.create(
    {patient_id:User.all.first.id,
    partner_id:User.all.second.id,}
)
AccountabilityPartner.create(
    {patient_id:User.all.third.id,
    partner_id:User.all.fourth.id,}
)
AccountabilityPartner.create(
    {patient_id:User.all.fourth.id,
    partner_id:User.all.first.id,}
)
AccountabilityPartner.create(
    {patient_id:User.all.fifth.id,
    partner_id:User.all.first.id,}
)
AccountabilityPartner.create(
    {patient_id:User.all.first.id,
    partner_id:User.all.fifth.id,}
)

puts "accountability partners created"
puts "creating dosages"
# Dosage.create({taken:true,prescription_id: Prescription.all.first.id})
# Dosage.create({taken:true,prescription_id: Prescription.all.second.id})
# Dosage.create({taken:true,prescription_id: Prescription.all.third.id})
# Dosage.create({taken:true,prescription_id: Prescription.all.fourth.id})
# Dosage.create({taken:true,prescription_id: Prescription.all.fifth.id})
# Dosage.create({taken:true,prescription_id: Prescription.all.sixth.id})
# Dosage.create({taken:true,prescription_id: Prescription.all.seventh.id})
# Dosage.create({taken:true,prescription_id: Prescription.all.eighth.id})
# Dosage.create({taken:true,prescription_id: Prescription.all.tenth.id})
# Dosage.create({taken:true,prescription_id: Prescription.all.eleventh.id})
# Dosage.create({taken:true,prescription_id: Prescription.all.twelfth.id})
# Dosage.create({taken:true,prescription_id: Prescription.all.thirteenth.id})
# Dosage.create({taken:true,prescription_id: Prescription.all.fourteenth.id})
# Dosage.create({taken:true,prescription_id: Prescription.all.fifteenth.id})
# Dosage.create({taken:true,prescription_id: Prescription.all.sixteenth.id})
# Dosage.create({taken:true,prescription_id: Prescription.all.seventeenth.id})
# Dosage.create({taken:true,prescription_id: Prescription.all.eighteenth.id})
# Dosage.create({taken:true,prescription_id: Prescription.all.nineteenth.id})
# Dosage.create({taken:true,prescription_id: Prescription.all.twentieth.id})
# Dosage.create({taken:true,prescription_id: Prescription.all.twenty.id})
# Dosage.create({taken:true,prescription_id: Prescription.all.twentyfirst.id})
# Dosage.create({taken:true,prescription_id: Prescription.all.twentysecond.id})
# Dosage.create({taken:true,prescription_id: Prescription.all.twentythird.id})
# Dosage.create({taken:true,prescription_id: Prescription.all.last.id})
Prescription.all.each{|pres| Dosage.create({taken:true,prescription_id: pres.id})}
puts "dosages created"