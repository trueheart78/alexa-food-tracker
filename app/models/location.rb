# frozen_string_literal: true

class Location < ApplicationRecord
  has_paper_trail

  belongs_to :household
  has_many :food_locations
  has_many :food, through: :food_locations

  default_scope { where deleted: false }

  validates :name, :description, presence: true
end
