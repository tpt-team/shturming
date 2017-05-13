desc 'send morning email'
task send_morning_email: :environment do
  recipient = Recipient.create(email: FFaker::Internet.email)
  10.times do
    Message.create(
      body: FFaker::Book.description,
      recipient: recipient,
      status: 'success'
    )
  end
end
