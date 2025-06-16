# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.create(username: 'ajit', email: 'ajitparihar@gmail.com', password: 'password', password_confirmation: 'password')
User.create(username: 'john', email: 'johnparihar@gmail.com', password: 'password', password_confirmation: 'password')
User.create(username: 'jane', email: 'janeparihar@gmail.com', password: 'password', password_confirmation: 'password')
User.create(username: 'doe', email: 'doeparihar@gmail.com', password: 'password', password_confirmation: 'password')

50.times do |i|
  Message.create(
    body: Faker::Lorem.sentence(word_count: 10),
    user_id: rand(1..4) 
  )
end