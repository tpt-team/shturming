class Message < ApplicationRecord
  belongs_to :recipient

  enum status: %w[success fail]

  scope :by_status, (->(status) { where(status: status) })
end
