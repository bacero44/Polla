FactoryBot.define do
  factory :team do
    name { Faker::Sports::Football.team }
    image_url { '/flags/ar.svg' }
  end
end
