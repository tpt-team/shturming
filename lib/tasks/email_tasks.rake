desc 'send morning email'
task send_morning_email: :environment do
  SendMessagesJob.new.perform(Recipient.all, 'morning')
end
