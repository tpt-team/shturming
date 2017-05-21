require 'sidekiq/web'
require './lib/dynamic_fetch'

redis_url = ENV['REDIS_URL'] || 'redis://localhost:6379'

Sidekiq.configure_client do |config|
  config.redis = { url: redis_url }
end
