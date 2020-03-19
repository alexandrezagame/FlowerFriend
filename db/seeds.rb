# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# Examples:
#

puts"deleting all database..."
Flower.destroy_all
User.destroy_all

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

puts "creating your flowershop"
flower_shop_alpha = FlowerShop.new(
    name: "alpha",
    address: "Götgatan 33, 116 21 Stockholm",
    user: alex
  )
flower_shop_alpha.save!

puts "creating your flowershop"
flower_shop_beta = FlowerShop.new(
    name: "beta",
    address: "Kåkbrinken 10, 111 27 Stockholm",
    user: nina
  )
flower_shop_beta.save!

puts "creating your flower"
  flower = Flower.new(
    name: "red rose",
    species: "Rose",
    total_price: "15€",
    flower_shop: flower_shop_alpha
    )
  flower.save!

puts "creating your flower"
  flower = Flower.new(
    name: "red rose",
    species: "Tulip",
    total_price: "25€",
    flower_shop: flower_shop_beta
    )
  flower.save!

puts "your damn seeding is done..."
