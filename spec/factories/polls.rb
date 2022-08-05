FactoryBot.define do
  factory :poll do
    title { Faker::Cosmere.spren }
    after :create do |poll|
      create_list :option, 3, poll: poll
    end
  end
end
