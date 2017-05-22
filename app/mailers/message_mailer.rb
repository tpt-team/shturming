class MessageMailer < ApplicationMailer
  def morning_email(user, body='')
    @body = body.presence || 'Гарного і продуктивного Вам дня!'
    @user = user
    mail to: user[:email], subject: 'Good morning'
  end
end
