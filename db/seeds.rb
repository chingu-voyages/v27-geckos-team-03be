# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Prescription.destroy_all
Medication.destroy_all

User.create({
    name: "Chris Sanchez",
    email: "christiansanchez@gmail.com",
    password: "abc123",
    phone: "1800000854",
})
Medication.create({
    name: "Oxy"
})
Prescription.create({
    tier:"1",
    date:"01/12/22",
    medication_id: 1,
    user_id:1,
})