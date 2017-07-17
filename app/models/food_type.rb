# frozen_string_literal: true

class FoodType < ApplicationRecord
  belongs_to :food
  belongs_to :type
end
