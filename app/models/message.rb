class Message < ApplicationRecord
  belongs_to :recipient

  enum status: %i(success fail)
  enum purpose: %i(morning motivation)

  scope :by_status, (->(status) { where(status: status) })
end
