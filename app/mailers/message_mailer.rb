class MessageMailer < ApplicationMailer
  def morning_email(body, user)
    @body = body
    @name = user[:name]
    mail to: user[:email], subject: 'Good morning'
  end
end
