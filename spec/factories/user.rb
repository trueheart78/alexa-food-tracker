# frozen_string_literal: true

FactoryGirl.define do
  factory :user, aliases: [:active_user] do
    name { Faker::Name.name }
    email    { Faker::Internet.safe_email name }
    password { Faker::Internet.password 20 }
    household
    administrator false
    head_of_household false
    active true

    factory :admin, aliases: [:administrator] do
      name 'Admin'
      administrator true
    end

    factory :head_of_household, aliases: [:hoh] do
      name 'HoH'
      head_of_household true
    end

    factory :inactive_user do
      name 'Inactive User'
      active false
    end
  end
end
