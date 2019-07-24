# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  owner = Owner.create(name: Faker::Name.name, username: Faker::Internet.username)
  rand(1..5).times do
    Dog.create(
        name: Faker::Creature::Dog.name,
        age: Faker::Number.within(1..18), 
        breed: Faker::Creature::Dog.breed,
        owner_id: owner.id
      )
    end
end

10.times do
  Walker.create(name: Faker::Name.name, username: Faker::Internet.username)
end

Dog.all.each do |dog|
  walker = Walker.all.sample
  Walk.create(
    walker_id: walker.id,
    dog_id: dog.id,
    walker_rating: Faker::Number.within(1..5),
    dog_rating: Faker::Number.within(1..5)
  )
end
