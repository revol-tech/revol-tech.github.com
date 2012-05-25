class MessagesController < ApplicationController
  def index
  end

  def new
  	@message = Message.new()
  end

  def create
  params[:message]
  	@message = Message.create(params[:message])
    @message.save!
    redirect_to params[:url], :notice => "Message Sent!"
  end

  def destroy
  end

  def update
  end

end
