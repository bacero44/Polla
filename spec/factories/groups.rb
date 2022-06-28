FactoryBot.define do
  factory :group do
    name { 'MyString' }
    association :stage
  end
end
