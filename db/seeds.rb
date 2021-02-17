# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all
Review.destroy_all

# Restaurant.create(name: "Dishoom", address: "London", phone_number: 1234567890, category: "italian")

# Review.create(rating: 4, content: "great", restaurant_id: 1)

10.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample
  )
end

10.times do
  Review.create(
    rating: rand(0..5),
    content: Faker::Restaurant.review,
    restaurant_id: rand(1..3)
  )
end
