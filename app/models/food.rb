class Food < ApplicationRecord
  belongs_to :household
  has_many :types, through: :food_types
  has_many :food_types
  has_many :locations, through: :food_locations
  has_many :food_locations

  default_scope { where deleted: false }
end
