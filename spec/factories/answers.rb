FactoryBot.define do
  factory :answer do
    vote_count { 1 }
    poll { nil }
    option { nil }
    user { nil }
  end
end
