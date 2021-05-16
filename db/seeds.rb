# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Trip.destroy_all
Destination.destroy_all

10.times do
    User.create(
        name: Faker::TvShows::StarTrek.character, 
        username: Faker::TvShows::AquaTeenHungerForce.character, 
        email: Faker::Internet.safe_email, 
        celiac: random_boolean = [true, false].sample, 
        adventurous: random_boolean = [true, false].sample)
end

3.times do
    Trip.create(
        name: Faker::Marketing.buzzwords

    )
end

3.times do
    Destination.create(
        name: Faker::Address.city
    )
end

puts "

Noice! 
"