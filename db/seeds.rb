# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
@prince = Artist.create!(name: "Prince")
@purple = @prince.songs.create!(title: "Purple Rains", length: 324, play_count: 24)
@beret = @prince.songs.create!(title: "Beret", length: 324, play_count: 93)