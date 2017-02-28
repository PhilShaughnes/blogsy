FactoryGirl.define do
  factory :post do
    title {Faker::Beer.name}
    body {Faker::Hipster.paragraph}
    user
    summary Faker::ChuckNorris.fact
  end
end
