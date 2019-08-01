# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

100.times do
    city = City.create(city_name: Faker::Address.city)
    dog_sitter = DogSitter.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
    dog = Dog.new(name: Faker::Creature::Dog.name)
    dog.city = city
    dog_sitter.city = city
    dog.save
    dog_sitter.save
end
