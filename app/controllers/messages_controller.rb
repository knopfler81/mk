class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    @message.request = request
      if @message.deliver
        flash.now[:error] = nil
      else
        flash.now[:error] = 'Cannot send message.'
        render :new
      end
  end

end