class DictionaryController < ApplicationController
  def index
  end

  def new
  end

  def create
    ask = params[:ask]
    answer = params[:answer]

    redirect_to '/dictionary'
  end
end
