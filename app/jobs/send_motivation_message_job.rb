class SendMotivationMessageJob < ApplicationJob
  queue_as :default

  def perform(recipient, type)
    infos = Info.send(type)
    return unless infos.any?
    body = infos.sample.body
    begin
      MessageMailer.motivation_email(recipient, body).deliver
      Message.create(recipient: recipient, body: body, status: 0, purpose: 'motivation')
    rescue
      Message.create(recipient: recipient, body: body, status: 1, purpose: 'motivation')
    end
  end
end
