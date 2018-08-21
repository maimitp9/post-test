FactoryBot.define do
  factory :post do
    title Faker::Lorem.sentence
    body Faker::Lorem.paragraphs(2)
    email Faker::Internet.email
    phone_no '9898989898'
  end
end
