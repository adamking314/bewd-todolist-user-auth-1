FactoryBot.define do
  factory :user do
    sequence(:username) { |n| "testuser#{n}" } # Ensures unique usernames
    password { 'password' }
  end
end

