# frozen_string_literal: true

class User < ApplicationRecord
  include Clearance::User

  has_paper_trail

  belongs_to :household
  scope :active,   -> { where active: true }
  scope :inactive, -> { where active: false }

  validates :email, presence: true
  validates :password, length: { minimum: 8 }
end
