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

  def update
    dictionary = Dictionary.find(params[:id])
    ask = params[:ask]
    answer = params[:answer]

    dictionary.update(ask: ask, answer: answer)

    redirect_to '/dictionary'
  end

  def destroy
    Dictionary.destroy(params[:id])

    redirect_to '/dictionary'
  end
end
