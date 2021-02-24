FactoryBot.define do 
  factory :user do
    id { Faker::Number.number(digits: 2) }
  end
end