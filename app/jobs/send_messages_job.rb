class SendMessagesJob < ApplicationJob
  queue_as :default

  def perform(recipients, type)
    recipients.each do |recipient|
      body = I18n.t("#{type}_messages").sample
      begin
        MessageMailer.send("#{type}_email", recipient, body).deliver
        Message.create(recipient: recipient, body: body, status: 0, purpose: type)
      rescue
        Message.create(recipient: recipient, body: body, status: 1, purpose: type)
      end
    end
  end
end
