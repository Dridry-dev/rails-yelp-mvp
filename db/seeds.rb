# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Faker::Config.locale = 'fr'
arr = %w[chinese italian japanese french belgian]

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating 5 fake restaurants...'
5.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: arr.sample
  )
  puts "Created #{restaurant.name}"
  restaurant.save!
end

puts 'Finished!'
