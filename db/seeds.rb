# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

%w(Buick Cadillac Chevrolet Chrysler Dodge Ford Lincoln Oldsmobile Pontiac Saturn).each do |name|
  Manufacturer.create(name: name, domestic: true)
end

%w(Audi BWW Honda Hyundai Mazda Mercedes Mitsubishi Nissan Saab Subaru Suzuki Toyota Volkswagen Volvo).each do |name|
  Manufacturer.create(name: name, domestic: false)
end