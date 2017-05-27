class MessageMailer < ApplicationMailer
  def morning_email(recipient, body = '')
    @body = body.presence || I18n.t(:good_day)
    @recipient = recipient
    mail to: recipient.email, subject: 'Good morning'
  end

  def motivation_email(recipient, body)
    @body = body
    @recipient = recipient
    mail to: recipient.email, subject: 'Motivation'
  end
end
