FactoryBot.define do
  factory :excursions do
    title { Faker::Coffee.blend_name }
    description { Faker::Coffee.notes }
    location { Faker::Address.city }
    user
  end
end