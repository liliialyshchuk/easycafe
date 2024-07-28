# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')


110.times do
  Dish.create(
    short_name: Faker::Food.dish,
    description: Faker::Food.description,
    price: Faker::Number.within(range: 5..50),
    dish_image: Faker::LoremFlickr.image(search_terms: ['food']),
    category_id: rand(10),
  )
end

