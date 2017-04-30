class RecipientsController < ApplicationController
  def index
    @recipients ||= Recipient.all.paginate(page: params[:page])
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
