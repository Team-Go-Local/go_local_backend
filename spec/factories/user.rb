FactoryBot.define do
  factory :user do
    id { Faker::Number.within(range: 1..100) }
  end
end
