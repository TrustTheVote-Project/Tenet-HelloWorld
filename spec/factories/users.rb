FactoryGirl.define do
  factory :user do
    account
    sequence(:email) { |n| "user.#{n}@email.com" }
    login { |o| o.email }
    first_name "Mark"
    last_name  "Reader"
    role       "reader"
  end
end
