# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'json'
# require 'open‐uri'
# url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# ingredients_serialized = open(url).read
# ingredients = JSON.parse(ingredients_serialized)

# pour scrapper: https://www.atelier-cocktail.com/recette-ingredients-dans-mon-frigo/

ingredients_array = [
 { name: "Vodka ", category: "Alcool", unit: "cl" } ,
 { name: "Gin ", category: "Alcool", unit: "cl" } ,
 { name: "Cognac ", category: "Alcool", unit: "cl" } ,
 { name: "Tequila ", category: "Alcool", unit: "cl" } ,
 { name: "Rhum Blanc ", category: "Alcool", unit: "cl" } ,
 { name: "Amaretto ", category: "Alcool", unit: "cl" } ,
 { name: "Curaçao Bleu ", category: "Alcool", unit: "cl" } ,
 { name: "Vermouth Blanc ", category: "Alcool", unit: "cl" } ,
 { name: "Champagne ", category: "Alcool", unit: "cl" } ,
 { name: "Whisky ", category: "Alcool", unit: "cl" } ,
 { name: "Kahlua ", category: "Alcool", unit: "cl" } ,
 { name: "Cointreau ", category: "Alcool", unit: "cl" } ,
 { name: "Baileys Irish Cream ", category: "Alcool", unit: "cl" } ,
 { name: "Malibu ", category: "Alcool", unit: "cl" } ,
 { name: "Rhum ", category: "Alcool", unit: "cl" } ,
 { name: "Liqueur D'Orange ", category: "Alcool", unit: "cl" } ,
 { name: "Campari ", category: "Alcool", unit: "cl" } ,
 { name: "Vermouth Rouge ", category: "Alcool", unit: "cl" } ,
 { name: "Grand Marnier ", category: "Alcool", unit: "cl" } ,
 { name: "Liqueur D'Abricot ", category: "Alcool", unit: "cl" } ,
 { name: "Bitter Angostura ", category: "Alcool", unit: "cl" } ,
 { name: "Midori ", category: "Alcool", unit: "cl" } ,
 { name: "Rhum Ambré ", category: "Alcool", unit: "cl" } ,
 { name: "Pisang Ambon ", category: "Alcool", unit: "cl" } ,
 { name: "Crème De Banane ", category: "Alcool", unit: "cl" } ,
 { name: "Whisky ", category: "Alcool", unit: "cl" } ,
 { name: "Triple Sec ", category: "Alcool", unit: "cl" } ,
 { name: "Jus De Citron ", category: "Autre boisson", unit: "cl" } ,
 { name: "Jus D'Orange ", category: "Autre boisson", unit: "cl" } ,
 { name: "Jus D'Ananas ", category: "Autre boisson", unit: "cl" } ,
 { name: "Sirop De Grenadine ", category: "Autre boisson", unit: "cl" } ,
 { name: "Jus De Lime ", category: "Autre boisson", unit: "cl" } ,
 { name: "Sucre ", category: "Aliment", unit: "g" } ,
 { name: "Crème Laitière Légère ", category: "Aliment", unit: "cl" } ,
 { name: "Jus De Pamplemousse ", category: "Autre boisson", unit: "cl" } ,
 { name: "Sirop De Sucre ", category: "Autre boisson", unit: "cl" } ,
 { name: "Oeuf ", category: "Aliment", unit: "pieces" } ,
 { name: "Limonade ", category: "Autre boisson", unit: "cl" } ,
 { name: "Sirop De Fraise ", category: "Autre boisson", unit: "cl" } ,
 { name: "Eau ", category: "Autre boisson", unit: "cl" } ,
 { name: "Crème Laitière Fouettée ", category: "Aliment", unit: "cl" } ,
 { name: "Sirop D'Amande ", category: "Autre boisson", unit: "cl" } ,
 { name: "Jus De Pomme ", category: "Autre boisson", unit: "cl" } ,
 { name: "Club Soda ", category: "Autre boisson", unit: "cl" } ,
 { name: "Eau Gazeuse ", category: "Autre boisson", unit: "cl" } ,
 { name: "Soda ", category: "Autre boisson", unit: "cl" } ,
 { name: "Lait ", category: "Autre boisson", unit: "cl" } ,
 { name: "Jus De Canneberge Rouge ", category: "Autre boisson", unit: "cl" } ,
 { name: "Citron ", category: "Autre boisson", unit: "cl" } ,
 { name: "Tonic ", category: "Autre boisson", unit: "cl" } ,
 { name: "Jus De Fruit De La Passion ", category: "Autre boisson", unit: "cl" } ,
 { name: "Ginger Ale ", category: "Autre boisson", unit: "cl" } ,
 { name: "Crème Laitière Épaisse ", category: "Autre boisson", unit: "cl" } ,
 { name: "Café ", category: "Autre boisson", unit: "cl" } ,
 { name: "Concombre", category: "Aliment", unit: "pieces" } ,
 { name: "Basilic", category: "Aliment", unit: "feuilles" } ,
 { name: "Gingembre", category: "Aliment", unit: "g" } ,
 { name: "Menthe", category: "Aliment", unit: "feuilles" } ,
 { name: "Olive", category: "Aliment", unit: "pieces" } ,
 { name: "Oeuf (Blanc)", category: "Aliment", unit: "pieces" }
]

ingredients_array.each do |ingredient|
  Ingredient.new(ingredient).save
end
