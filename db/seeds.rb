# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = []
5.times do
  user = User.create!(
    username: Faker::Pokemon.name,
    email: Faker::Internet.email,
    bio: Faker::Cat.breed
  )
  users << user
  rand(1..6).times do
    post = user.posts.create!(
      title: Faker::Beer.name,
      body: Faker::Hipster.paragraph,
      summary: Faker::ChuckNorris.fact
    )
    rand(1..3).times do
      post.comments.create!(
        body: Faker::HarryPotter.quote,
        user: users.sample
      )
    end
  end
end
