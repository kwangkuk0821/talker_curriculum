class ChatController < ApplicationController
  def index
  end

  def create
    content = params[:content]

    redirect_to '/'
  end
end
