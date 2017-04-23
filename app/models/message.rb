class Message < ApplicationRecord
  belongs_to :recipient

  enum status: %w[success fail]

  scope :total_on, (->(date) { where('date(created_at) = ?', date) })
  scope :by_status, (->(status) { where(status: status) })
end
