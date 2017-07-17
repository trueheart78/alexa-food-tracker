# frozen_string_literal: true

FactoryGirl.define do
  factory :type, aliases: [:types] do
    name { %w[dinner lunch breakfast snack meal].sample }
    household
    deleted false
  end
end
