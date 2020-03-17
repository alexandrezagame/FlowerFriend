# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# Examples:
#

puts"deleting all database..."
User.destroy_all
Flower.destroy_all

puts "create users"
  alex = User.new(
    password: "123456",
    email: "alex@gmail.com"
  )
  alex.save!

  felix = User.new(
    password: "123456",
    email: "felix@gmail.com"
  )
  felix.save!


  nina = User.new(
    password: "123456",
    email: "nina@gmail.com"
  )
  nina.save!

  daniel = User.new(
    password: "123456",
    email: "daniel@gmail.com"
  )
  daniel.save!

puts "creates flowers"
  flower = Flower.new(
    name: "red rose",
    species: "Rose",
    user: alex
    )
  flower.save!

puts "your damn seeding is done..."
