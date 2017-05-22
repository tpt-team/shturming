class MessageMailer < ApplicationMailer
  def morning_email(recipient, body = '')
    @body = body.presence || 'Гарного і продуктивного Вам дня!'
    @recipient = recipient
    mail to: recipient.email, subject: 'Good morning'
  end
end
