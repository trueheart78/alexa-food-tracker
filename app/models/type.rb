# frozen_string_literal: true

class Type < ApplicationRecord
  has_paper_trail

  belongs_to :household
  has_many :food_types
  has_many :food, through: :food_types

  default_scope { where deleted: false }

  validates :name, presence: true
end
