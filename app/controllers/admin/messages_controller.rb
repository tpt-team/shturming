class Admin::MessagesController < Admin::AdminController
  def index
    @messages = Message.all
  end
end
