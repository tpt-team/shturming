namespace :email_tasks do
  desc 'send morning email'
  task send_morning_email: :environment do
    SendMessagesJob.new.perform(Recipient.all, 'morning')
  end

  desc 'send motivation email'
  task send_motivation_email: :environment do
    SendMessagesJob.new.perform(Recipient.all, 'motivation')
  end
end
