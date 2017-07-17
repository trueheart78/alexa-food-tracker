# frozen_string_literal: true

class User < ApplicationRecord
  has_paper_trail

  belongs_to :household
  default_scope { where active: true }
end
