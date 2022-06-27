FactoryBot.define do
  factory :stage do
    name { Faker::Games::SuperMario.location }
    association :tournament
  end
end
