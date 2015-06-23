# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Manufacturer.destroy_all
CarModel.destroy_all
Factory.destroy_all

ford = Manufacturer.create(name: 'Ford', domestic: true)
toyota = Manufacturer.create(name: 'Toyota', domestic: false)

ford.car_models.create(name: 'Fusion', mpg: 41, price: 26600)
ford.car_models.create(name: 'Mustang', mpg: 31, price: 23800)

ford.factories.create(city: 'Flat Rock', state: 'MI', unionized: false)

ford.car_models.create(name: 'F-150', mpg: 26, price: 26100)

ford.factories.create(city: 'Dearborn', state: 'MI', unionized: false)
ford.factories.create(city: 'Claycomo', state: 'KS', unionized: false)

# both the Fusion and the Mustang are made in Flat Rock
# the F-150 is made in both Dearborn and Claycomo

toyota.factories.create(city: 'Tupelo', state: 'MS')
toyota.factories.create(city: 'Georgetown', state: 'KY')
toyota.factories.create(city: 'Lafayette', state: 'IN')

toyota.car_models.create(name: 'Corolla', mpg: 42, price: 16950)
toyota.car_models.create(name: 'Camry', mpg: 35, price: 22970)

# Corollas are made in Tupelo; Camrys are made in Georgetown and Lafayette
