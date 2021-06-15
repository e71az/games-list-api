FactoryBot.define do
  factory :game do
    name { Faker::Lorem.word }
    description { Faker::Lorem.sentence }
    image { Faker::Lorem.sentence }
    price { Faker::Number.number(digits: 2) }
  end
end
