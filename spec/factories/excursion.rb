FactoryBot.define do
  factory :excursion do
    title { Faker::Coffee.blend_name }
    description { Faker::Coffee.notes }
    location { Faker::Address.city }

    user 
  end
end