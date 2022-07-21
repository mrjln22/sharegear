# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

#   Character.create(name: 'Luke', movie: movies.first)db

#   Character.create(name: 'Luke', movie: movies.first)

require "date"
require "time"
require "open-uri"

User.destroy_all
Product.destroy_all

puts "Creating Adrienne the user..."

User.create!(first_name: "Adrienne", last_name: "Ackley", dob: Date.parse("01-01-2000"), address: "5 America street", password: "123456", email: "adrienne@adrienne.com")

puts "Creating Marjolijn the user..."
User.create!(first_name: "Marjolijn", last_name: "van der Ree", dob: Date.parse("01-01-2000"), address: "5 England street ", password: "123456", email:"marjolijn@marjolijn.com")

puts "Finished!"

puts "Creating products...."

product_one = Product.new(name: "Kayak", category: "watersports", available: true, description: "This is a great Kayak", price: 100, user: User.first)
# file_one = URI.open('https://res.cloudinary.com/dts5gkqpt/image/upload/
# v1657638028/development/petuuk962ut640ez4jmn9b3v8xpw.jpg')
# product_one.photo.attach(io: file_one, filename: "kayak.jpg", content_type:
# 'image/jpg')
product_one.save!
puts "product 1 is created"
product_two = Product.new(name: "Surfboard", category: "watersports", available: true, description: "This is a great surfboard", price: 200, user: User.first)
product_two.save!
puts "product 2 is created"
product_three = Product.new(name: "bicycle", category: "cycling", available: true, description: "This is a great bike", price: 500, user: User.first)
product_three.save!
puts "product 3 is created"

puts "Finished!"

# service_one = Service.new(skill_name: "Guitar lessons", price_per_hour: 75, # availability: true, user: User.first, description: "Learn all the classics")
# file_one = URI.open('https://images.unsplash.com/# photo-1604286742257-9d211b05b0df?ixlib=rb-1.2.1&# ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&# q=80')
# service_one.photo.attach(io: file_one, filename: 'nes.png', content_type: # 'image/png')
# service_one.save
