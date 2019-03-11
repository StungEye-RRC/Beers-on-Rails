# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Beer.destroy_all
AdminUser.destroy_all

5.times do
  category = Category.create(name: Faker::Beer.unique.style)
  10.times do
    category.beers.create(
      name: Faker::Beer.unique.name,
      alcohol: Faker::Beer.alcohol,
      ibu: Faker::Beer.ibu,
      price: Faker::Commerce.price(range = 2..20.0, as_string = false)
    )
  end
end

puts "Beers in DB: #{Beer.count}"

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?