# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Transport.create(
  brand: "car",
  horse: "800 hp",
  year: 2023
)

Transport.create(
  brand: "camel",
  horse: "5 hp",
  year: 2018
)

Transport.create(
  brand: "montgolfiere",
  horse: "80 hp",
  year: 1783
)

Transport.create(
  brand: "santa_sleigh",
  horse: "12 hp",
  year: 1989
)

Transport.create(
  brand: "pumpkin",
  horse: "6 hp",
  year: 2020
)
