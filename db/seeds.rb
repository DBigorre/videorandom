# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "destruction 3...2...1..."
Videogame.destroy_all

puts "creating new word of play"

Videogame.create!(nom: "Skyrim", plateforme: "Playstation 4", termine: false)


puts "Finish!!! Play again?"
