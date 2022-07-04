# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


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

product_one = Product.new(name: "Kayak", category: "watersports", available: "yes", description: "This is a great Kayak", price: 100)
product_one.save

product_two = Product.new(name: "Surfboard", category: "watersports", available: "yes", description: "This is a great surfboard", price: 200)
product_two.save

product_three = Product.new(name: "bicycle", category: "cycling", available: "yes", description: "This is a great bike", price: 500)
product_three.save

puts "Finished!"
