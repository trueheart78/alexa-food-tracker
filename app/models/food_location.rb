# frozen_string_literal: true

class FoodLocation < ApplicationRecord
  belongs_to :food
  belongs_to :location
end
