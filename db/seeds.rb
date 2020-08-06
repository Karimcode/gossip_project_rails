# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# User.destroy_all
Gossip.destroy_all
# City.destroy_all


# paris_city = City.create!(name: 'Paris',
#                   zipcode: "75500")


# puts "1 city créée"

# user_test = User.create!(first_name: 'Karim', last_name: "Test", description: "Un utilisateur test", email: "test2@test.com", age: "25", city_id: "70")


# puts "1 user créé"


gossip_un = Gossip.create!(title: "Gossip_test", content: "Un faux gossip tout pourri", user_id: "5", city_id: "70")


puts "3 gossips créés"


