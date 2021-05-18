FactoryBot.define do
  factory :game do
    id 1
    name { Faker::Lorem.word }
    description { Faker::Lorem.words(10) }
    image { Faker::Image.imageUrl(50, 50, "games") }
    price { Faker::Number.number(99) }
  end
end
