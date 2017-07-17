# frozen_string_literal: true

class FoodType < ApplicationRecord
  has_paper_trail

  belongs_to :food
  belongs_to :type
end
