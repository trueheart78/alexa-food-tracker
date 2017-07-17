# frozen_string_literal: true

class Household < ApplicationRecord
  has_paper_trail

  has_many :type_tags
  has_many :users
  has_many :location_tags
  has_many :food

  default_scope { where active: true }
end
