# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.create(name: "lemon")
Ingredient.create(name: "peach")
Ingredient.create(name: "gin")
Ingredient.create(name: "vodka")
Ingredient.create(name: "rhum")
Ingredient.create(name: "mint")
Ingredient.create(name: "whisky")
Ingredient.create(name: "tequila")
Ingredient.create(name: "manzana")
Ingredient.create(name: "curacao")
Ingredient.create(name: "amaretto")
Ingredient.create(name: "triple sec")
Ingredient.create(name: "sirop de grenadine")
Ingredient.create(name: "basilic")
Ingredient.create(name: "Sirop d’orgeat")
Ingredient.create(name: "Sirop de menthe")
Ingredient.create(name: "Sirop de citron")
Ingredient.create(name: "cognac")
Ingredient.create(name: "Porto rosé")
Ingredient.create(name: "pastis")
Ingredient.create(name: "sambuca")
Ingredient.create(name: "vin rouge")
Ingredient.create(name: "armagnac")
Ingredient.create(name: "calvados")
Ingredient.create(name: "mezcal")
Ingredient.create(name: "chartreuse")
Ingredient.create(name: "absinthe")
Ingredient.create(name: "vermouth blanc sec")



require 'faker'
Cocktail.destroy_all
puts 'Creating 10 fake cocktails...'
10.times do
  @cocktail = Cocktail.new(
    name:    Faker::Dessert.flavor
  )
  @cocktail.save
  Dose.create(description: "6 cl", ingredient: Ingredient.first, cocktail: @cocktail)
end
puts 'Finished!'
