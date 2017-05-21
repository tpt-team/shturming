class Admin::MessagesController < Admin::AdminController
  def index
    @messages = Message.all.paginate(page: params[:page])
  end

  def update
    MessageMailer.morning_email(message.body, message.recipient).deliver
    message.success!
  rescue => e
    Rails.logger.error(e.message)
  end

  private

  def message
    @message ||= Message.find(params[:id])
  end
end
