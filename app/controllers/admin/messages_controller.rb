class Admin::MessagesController < Admin::AdminController
  def index
    @messages = Message.all.paginate(page: params[:page], per_page: 15)
  end

  def update
    MessageMailer.send("#{message.purpose}_email", message.recipient, message.body).deliver
    message.success!
  rescue => e
    Rails.logger.error(e.message)
  end

  def destroy
    message.destroy
  end

  private

  def message
    @message ||= Message.find(params[:id])
  end
end
