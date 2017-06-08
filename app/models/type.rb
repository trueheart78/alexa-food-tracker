class Type < ApplicationRecord
  belongs_to :household
  has_many :food, through: :food_types
  has_many :food_types

  default_scope { where deleted: false }
end
