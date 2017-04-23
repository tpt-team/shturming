10.times do
  Recipient.create(
    email: FFaker::Internet.email
  )
end
50.times do
  Message.create(
    body: FFaker::Book.description,
    recipient: Recipient.all.sample,
    status: Message.statuses.values.sample
  )
end
