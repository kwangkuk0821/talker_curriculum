class ChatController < ApplicationController
  def index
  end

  def create
    content = params[:content]
    dictionary = Dictionary.where(ask: content).sample

    redirect_to '/'
  end
end
