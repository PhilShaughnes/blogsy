FactoryGirl.define do
  factory :user do
    username {Faker::Pokemon.name}
    email {Faker::Internet.email}
    bio Faker::Cat.breed
  end
end
