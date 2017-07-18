# frozen_string_literal: true

FactoryGirl.define do
  factory :food_type, aliases: [:food_types] do
    food
    type
  end
end
