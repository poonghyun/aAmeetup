class ChatsController < ApplicationController
  def new
    @chat = Chat.new
  end

  def create
    @event = Event.find(params[:event_id])
    @chat = @user.chats.new(chat_params)

    if @chat.save
      redirect_to event_url(@chat.event)
    else
      render json: @chat.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    @chat = Chat.find(params[:id])
    @chat.destroy
    redirect_to event_url(@chat.event)
  end

  private
  def chat_params
    params.require(:chat).permit(:text, :type)
  end
end
