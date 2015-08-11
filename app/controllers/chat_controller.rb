class ChatController < ApplicationController
  def index
  end

  def create
    content = params[:content]
    dictionary = Dictionary.where(ask: content).sample

    if dictionary.nil?
      redirect_to '/dictionary/new'
    else
      Chat.create(who: 'user', content: dictionary.ask)
      Chat.create(who: 'bot', content: dictionary.answer)
      redirect_to '/'
    end

  end
end
