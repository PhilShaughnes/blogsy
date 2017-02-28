FactoryGirl.define do
  factory :comment do
    body {Faker::HarryPotter.quote}
    user
    post
  end
end
