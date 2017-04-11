class Message < ApplicationRecord
  enum status: %w[success fail]
end
