class SendMessagesJob < ApplicationJob
  queue_as :default

  def perform
    ApplicationController.new.users.each do |user|
      MessageMailer.morning_email('body', user).deliver
    end
  end
end
