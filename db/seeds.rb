# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Beer.destroy_all

50.times do
  Beer.create(
    name: Faker::Beer.unique.name,
    alcohol: Faker::Beer.alcohol,
    ibu: Faker::Beer.ibu,
    price: Faker::Commerce.price(range = 2..20.0, as_string = false)
  )
end

puts "Beers in DB: #{Beer.count}"
