require 'net/http'

namespace :email_tasks do
  desc 'send morning email'
  task send_morning_email: :environment do
    SendMessagesJob.new.perform(recipients, 'morning')
  end

  desc 'send motivation email'
  task send_motivation_email: :environment do
    recipients.each do |recipient|
      result = recipient.mood.split('/')
      mood = result.first.to_f / result.second.to_f
      type =
        if mood <= 0.5
          'super_motivation'
        elsif mood > 0.5 && mood <= 0.7
          'extra_motivation'
        else
          'motivation'
        end
      SendMotivationMessageJob.new.perform(recipient, type)
    end
  end

  def recipients
    url = URI.parse('http://social-sk.herokuapp.com/api/user_tests')
    req = Net::HTTP::Get.new(url.to_s)
    res = Net::HTTP.start(url.host, url.port) {|http| http.request(req) }
    results = JSON.parse(res.body)
    update_results(results)
    Recipient.all
  end

  def update_results(results)
    results.each do |result|
      recipient = Recipient.where(email: result['user']['email']).first_or_initialize
      recipient.update(
        first_name: result['user']['full_name'].split().first,
        last_name: result['user']['full_name'].split().last,
        mood: result['result']['mood'],
        gender: result['user']['gender']
      )
    end
  end
end
