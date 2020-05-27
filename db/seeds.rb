# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# db/seeds.rb
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "belgian" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian" }
burger_home =  { name: "Burger home", address: "123 av de la liberté, 13127 Vitrolles", category: "french" }
kebab =  { name: "Kebab des Merveilles", address: "2 place Pie, 84000 Avignon", category: "belgian" }
muraille_de_chine =  { name: "La Muraille de Chine", address: "245 place de la République, 85134 Bolynes", category: "chinese" }

[dishoom, pizza_east, burger_home, kebab, muraille_de_chine].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
