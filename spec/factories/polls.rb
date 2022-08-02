FactoryBot.define do
  factory :poll do
    title { Faker::String.random }
  end
end
