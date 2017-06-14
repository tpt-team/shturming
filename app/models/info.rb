class Info < ApplicationRecord
  validates :body, presence: true

  enum purpose: %i(morning motivation)
end
