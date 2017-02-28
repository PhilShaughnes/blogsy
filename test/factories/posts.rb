FactoryGirl.define do
  factory :post do
    title Faker::Beer.name
    body Faker::Hipster.paragraph
    user_id 1
    summary Faker::ChuckNorris.fact
  end
end
