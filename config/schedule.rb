# set :environment, :development

every 2.minutes do
  rake 'send_morning_email'
end
