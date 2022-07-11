# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)db
require "date"
require "time"
require "open-uri"

User.destroy_all
Product.destroy_all

puts "Creating Adrienne the user..."

User.create!(first_name: "Adrienne", last_name: "Ackley", dob: Date.parse("01-01-2000"), address: "5 America street", password: "123456", email: "adrienne@adrienne.com")

puts "Creating Marjolijn the user..."
User.create!(first_name: "Adrienne", last_name: "Ackley", dob: Date.parse("01-01-2000"), address: "5 England street ", password: "123456", email:"marjolijn@marjolijn.com")

puts "Finished!"

puts "Creating products...."

product_one = Product.new(name: "Kayak", category: "watersports", available: true, description: "This is a great Kayak", price: 100, user: User.first)
product_one.save!
puts "product 1 is created"
product_two = Product.new(name: "Surfboard", category: "watersports", available: true, description: "This is a great surfboard", price: 200, user: User.first)
product_two.save!
puts "product 2 is created"
product_three = Product.new(name: "bicycle", category: "cycling", available: true, description: "This is a great bike", price: 500, user: User.first)
product_three.save!
puts "product 3 is created"

puts "Finished!"
