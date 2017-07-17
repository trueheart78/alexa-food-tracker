# frozen_string_literal: true

FactoryGirl.define do
  factory :household, aliases: [:active_household] do
    name { Faker::Name.last_name }
    active true

    factory :inactive_household do
      active false
    end
  end
end
