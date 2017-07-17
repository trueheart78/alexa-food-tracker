# frozen_string_literal: true

class FoodLocation < ApplicationRecord
  has_paper_trail

  belongs_to :food
  belongs_to :location
end
