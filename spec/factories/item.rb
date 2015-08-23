FactoryGirl.define do
  factory :item do
    title Faker::Name.title
    description Faker::Lorem.sentence
  end
end
