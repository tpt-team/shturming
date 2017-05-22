class SendMessagesJob < ApplicationJob
  queue_as :default

  def perform
    ApplicationController.new.users.each do |user|
      MessageMailer.morning_email(user).deliver
    end
  end
end
