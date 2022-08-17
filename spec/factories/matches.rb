FactoryBot.define do
  factory :match do
    association :stage
    association :group
    association :home_team, factory: :participating_team
    association :away_team, factory: :participating_team
    start { "2022-06-28 12:01:43" }
    score_team_1 { nil }
    score_team_2 { nil }
  end
end
