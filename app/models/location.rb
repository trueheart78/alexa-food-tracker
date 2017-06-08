class Location < ApplicationRecord
  belongs_to :household
  has_many :food, through: :food_locations
  has_many :food_locations

  default_scope { where deleted: false }
end
