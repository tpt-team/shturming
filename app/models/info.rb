class Info < ApplicationRecord
  validates :body, presence: true

  enum purpose: %i(morning motivation extra_motivation super_motivation)
end
