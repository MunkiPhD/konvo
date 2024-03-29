require 'faker'

FactoryGirl.define do
  factory :user do
    name { Faker::Name.name }
    sequence(:email) { |n| "johnSmith#{n}@email.com" }
    password "test123"
    password_confirmation "test123"
  end
end
