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
    name: "Kings Shop",
    address: "Götgatan 33, 116 21 Stockholm",
    user: alex
  )
flower_shop_alpha.save!

puts "creating your flowershop"
flower_shop_beta = FlowerShop.new(
    name: "Nina's Flower Shop",
    address: "Kåkbrinken 10, 111 27 Stockholm",
    user: nina
  )
flower_shop_beta.save!

puts "creating your flowers"
  flower = Flower.new(
    name: "Rose from Spain",
    species: "Rose",
    total_price: "12€",
    flower_shop: flower_shop_alpha
    )
  flower.save!

  flower = Flower.new(
    name: "Azalea from the Amazon",
    species: "Azalea",
    total_price: "25€",
    flower_shop: flower_shop_alpha
    )
  flower.save!

  flower = Flower.new(
    name: "Lily from Sweden",
    species: "Lily",
    total_price: "15€",
    flower_shop: flower_shop_alpha
    )
flower.save!

  flower = Flower.new(
    name: "Pione from Norway",
    species: "Pione",
    total_price: "8€",
    flower_shop: flower_shop_alpha
    )
flower.save!

  flower = Flower.new(
    name: "Tulip from the Netherlands",
    species: "Tulip",
    total_price: "10€",
    flower_shop: flower_shop_beta
    )
  flower.save!

  flower = Flower.new(
    name: "Lily from Egypt",
    species: "Lily of the Nile",
    total_price: "20€",
    flower_shop: flower_shop_beta
    )
  flower.save!

puts "your seeding is done..."
