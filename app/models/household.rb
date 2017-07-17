# frozen_string_literal: true

class Household < ApplicationRecord
  has_paper_trail

  has_many :types
  has_many :users
  has_many :locations
  has_many :food

  scope :active,   -> { where active: true }
  scope :inactive, -> { where active: false }

  validates :name, presence: true
end
