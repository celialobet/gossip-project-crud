# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
City.destroy_all
Gossip.destroy_all

10.times do
  City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end


10.times do
  cities_list = City.all
  User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Hipster.sentence, email:Faker::Internet.email, age: Faker::Number.between(from: 18, to: 100), city: cities_list.sample)
end

20.times do
  u = User.all.sample
  gossip = Gossip.create(title: Faker::TvShows::BojackHorseman.character, content: Faker::TvShows::BojackHorseman.quote, user: u)
end

# require 'faker'

# User.destroy_all
# City.destroy_all
# Gossip.destroy_all
# Tag.destroy_all
# PrivateMessage.destroy_all

# 10.times do
#   city = City.create!(
#     name: Faker::Address.city, 
#     zip_code: Faker::Address.zip_code)
# end

# 10.times do
#   user = User.create!(
#     first_name: Faker::Name.first_name, 
#     last_name: Faker::Name.last_name, 
#     description: Faker::Lorem.sentence(word_count: 10), 
#     email: Faker::Internet.email, 
#     age: rand(15..75), 
#     city_id: City.all.sample)
# end


# 20.times do
#   gossip = Gossip.create!(user_id: User.all.sample, 
#     title: Faker::TvShows::BojackHorseman.character, 
#     content: Faker::TvShows::BojackHorseman.quote)
# end

# 10.times do
#   tag = Tag.create!(title: Faker::Lorem.words)
# end

# 40.times do
#   private_message = PrivateMessage.create!(
#   content: Faker::Lorem.sentence(word_count: 5),
#   sender: User.all.sample,
#   recipient: User.all.sample
#   )
# end