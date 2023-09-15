# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Pizza.destroy_all

Pizza.create!([{
  name: "Tonno",
  description: "A.",
  price: 45.00
},{
  name: "Margherita",
  description: "B.",
  price: 55.00
},{
  name: "Salami",
  description: "C.",
  price: 65.00
},])

p "Created #{Pizza.count} Pizzas"
