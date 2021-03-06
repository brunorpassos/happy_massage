# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(
  name: 'John Doe',
  email: 'john@doe.com',
  login: 'john.doe'
)

3.times do |i|
  Masseur.create!(
    name: "Best Masseur #{i}",
    email: 'best@massage.com'
  )
end