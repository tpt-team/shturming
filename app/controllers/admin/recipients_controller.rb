class Admin::RecipientsController < Admin::AdminController
  def index
    @recipients = Recipient.all.paginate(page: params[:page], per_page: 10)
  end

  def destroy
    recipient.destroy
  end

  private

  def recipient
    @recipient = Recipient.find(params[:id])
  end
end
