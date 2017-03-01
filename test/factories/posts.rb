FactoryGirl.define do
  factory :post do
    title {Faker::Beer.name}
    body {Faker::ChuckNorris.fact}
    user
    summary {Faker::StarWars.quote}
  end
end
