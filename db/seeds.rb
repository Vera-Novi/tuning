# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(first_name: "Guillaume", last_name: "Beauty", email: "beauty@gmail.fr", password: "testest")
User.create(first_name: "Ryan", last_name: "The Machine", email: "machine@gmail.fr", password: "testtest")
User.create(first_name: "Elena", last_name: "Perfectionist", email: "perfect@gmail.fr", password: "testtest")

Transport.create(brand: "chameau", horse: "2 ch", year: 2010, user_id: 1)

Transport.create(
  brand: "car",
  horse: "800 hp",
  year: 2023,
  user_id: 2
)
Transport.create(
  brand: "camel",
  horse: "5 hp",
  year: 2018,
  user_id: 3
)
Transport.create(brand: "montgolfiere", horse: "80 hp", year: 1783, user_id: 1)
Transport.create(
  brand: "santa_sleigh",
  horse: "12 hp",
  year: 1989,
  user_id: 2
)
Transport.create(
  brand: "pumpkin",
  horse: "6 hp",
  year: 2020,
  user_id: 3
)
