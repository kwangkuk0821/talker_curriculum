class DictionaryController < ApplicationController
  def index
  end

  def new
  end

  def create
    ask = params[:ask]
    answer = params[:answer]

    Dictionary.create(ask: ask, answer: answer)

    redirect_to '/dictionary'
  end
end
