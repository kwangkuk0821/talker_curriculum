class DictionaryController < ApplicationController
  def index
    @dictionaries = Dictionary.all
  end

  def new
  end

  def create
    ask = params[:ask]
    answer = params[:answer]

    Dictionary.create(ask: ask, answer: answer)

    redirect_to '/dictionary'
  end

  def edit
    @dictionary = Dictionary.find(params[:id])
  end
end
