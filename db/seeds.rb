10.times do
  Message.create(
    body: FFaker::Book.description,
    recipient: FFaker::Internet.email,
    status: Message.statuses.values.sample
  )
end
