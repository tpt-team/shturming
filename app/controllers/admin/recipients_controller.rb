class Admin::RecipientsController < Admin::AdminController
  def index
    @recipients = Recipient.all
  end
end
