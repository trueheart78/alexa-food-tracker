# frozen_string_literal: true

class User < ApplicationRecord
  include Clearance::User

  has_paper_trail

  belongs_to :household
  default_scope { where active: true }
end
