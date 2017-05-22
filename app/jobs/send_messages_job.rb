class SendMessagesJob < ApplicationJob
  queue_as :default

  def perform
    Recipient.all.each do |recipient|
      begin
        MessageMailer.morning_email(recipient).deliver
        Message.create(recipient: recipient, body: 'Гарного вам дня!', status: 0)
      rescue
        Message.create(recipient: recipient, body: 'Гарного вам дня!', status: 1)
      end
    end
  end
end
