class RecipientsController < ApplicationController
  def index
    @recipients ||= Recipient.all.paginate(page: params[:page], per_page: 10)
    @messages ||= Message.all
  end

  def show
    @messages ||= recipient.messages
  end

  private

  def recipient
    @recipient ||= Recipient.find(params[:id])
  end
end
