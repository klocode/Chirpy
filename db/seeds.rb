# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

7.times do
  user = User.create!(
  name: Faker::HarryPotter.character,
  username: Faker::Cat.unique.name,
  password: "password"
  )
  4.times do
    Post.create(
    body: Faker::StarWars.quote,
    user: user
    )
  end
end
