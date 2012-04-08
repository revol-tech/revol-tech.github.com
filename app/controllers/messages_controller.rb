class MessagesController < ApplicationController
  def index
  end

  def new
  	@message = Message.new()
  end

  def create
  	@message = Message.create(params[:message])
    @message.save!
    redirect_to "http://localhost:3000/projects/2"
  end

  def destroy
  end

  def update
  end

end
