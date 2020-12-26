# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.delete_all

@item = Item.create(
  name: "Hose, Pullover, T-Shirt, Kleid, ect",
  item_points: 10
)

@item = Item.create(
  name: "Unterwäsche, Socken, ect",
  item_points: 7
)

@item = Item.create(
  name: "Gurt, Handtasche, Schmuck, ect",
  item_points: 12
)