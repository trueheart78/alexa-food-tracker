# frozen_string_literal: true

FactoryGirl.define do
  factory :food_location, aliases: [:food_locations] do
    food
    location
  end
end
