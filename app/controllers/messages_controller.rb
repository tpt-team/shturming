class MessagesController < ApplicationController
  def index
    messages = recipient ? recipient.messages : Message.all
    @data = messages.by_status(params[:status])
                    .order(:created_at)
                    .group_by { |a| a.created_at.to_i * 1000 }
                    .map { |key, value| [key, value.count] }

    render json: @data
  end

  private

  def recipient
    @recipient ||= Recipient.find(params[:recipient_id]) if params[:recipient_id]
  end
end
