class MessageMailer < ApplicationMailer
  def morning_email(body, user)
    @body = body
    @email = user[:email]
    mail to: user[:email], subject: 'Good morning'
  end
end
