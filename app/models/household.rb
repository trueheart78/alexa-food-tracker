class Household < ApplicationRecord
  has_many :type_tags
  has_many :users
  has_many :location_tags
  has_many :food

  default_scope { where active: true }
end
