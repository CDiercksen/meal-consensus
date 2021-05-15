# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

10.times do
    User.create(name: Faker::TvShows::StarTrek.character, username: Faker::TvShows::AquaTeenHungerForce.character, email: Faker::Internet.safe_email, celiac: nil, adventurous: nil)
end

puts "

Noice! 
"