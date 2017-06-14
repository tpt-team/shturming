class SendMessagesJob < ApplicationJob
  queue_as :default

  def perform(recipients, type)
    infos = Info.send(type)
    return unless infos.any?
    recipients.each do |recipient|
      body = infos.sample.body
      begin
        MessageMailer.send("#{type}_email", recipient, body).deliver
        Message.create(recipient: recipient, body: body, status: 0, purpose: type)
      rescue
        Message.create(recipient: recipient, body: body, status: 1, purpose: type)
      end
    end
  end
end
