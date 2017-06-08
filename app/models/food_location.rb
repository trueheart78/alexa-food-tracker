class FoodLocation < ApplicationRecord
  belongs_to :food
  belongs_to :location
end
