class User < ApplicationRecord
  belongs_to :household
  default_scope { where active: true }
end
