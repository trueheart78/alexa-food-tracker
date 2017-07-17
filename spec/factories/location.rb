# frozen_string_literal: true

FactoryGirl.define do
  factory :location, aliases: [:locations] do
    name        { %w[fridge cupboard freezer refridgerator counter].sample }
    description { Faker::Lorem.sentence }
    household
    deleted false
  end
end
