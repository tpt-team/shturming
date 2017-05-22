class Recipient < ApplicationRecord
  has_many :messages, dependent: :destroy

  enum gender: %i(male female)

  validates :first_name, :last_name, :gender, :birthday, :email, presence: true

  self.per_page = 5

  def full_name
    [first_name, last_name].join(' ')
  end
end
