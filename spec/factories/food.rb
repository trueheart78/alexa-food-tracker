# frozen_string_literal: true

FactoryGirl.define do
  factory :food, aliases: [:foods] do
    name        { Faker::Food.dish }
    description { "Topped with delicious #{Faker::Dessert.topping}" }
    household
    deleted false

    factory :coffee do
      name        { Faker::Coffee.blend_name }
      description { Faker::Coffee.notes }
    end
  end
end
