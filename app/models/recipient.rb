class Recipient < ApplicationRecord
  has_many :messages, dependent: :destroy

  self.per_page = 10
end
