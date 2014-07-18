FactoryGirl.define do
  factory :account do
    state State.create_with(name: 'Test').find_or_create_by(code: 'TT')
    sequence(:name) { |n| "account.#{n}" }
  end
end
