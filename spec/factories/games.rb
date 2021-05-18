FactoryBot.define do
  factory :game do
    id 1
    name { Faker::Lorem.word }
    description { Faker::Lorem.words(10) }
    image { Faker::Lorem.word(50) }
    price { Faker::Number.number(99) }
  end
end
