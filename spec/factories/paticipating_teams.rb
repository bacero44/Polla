FactoryBot.define do
  factory :participating_team do
    association :team
    association :tournament
  end
end
