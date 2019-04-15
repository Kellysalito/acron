class User::WordsController < ApplicationController
  before_action :authenticate_user!

  def new
    @word = Word.new
  end

  def create
    @word = current_user.words.create(word_params)
    if @word.valid?
    redirect_to user_word_path(@word)
    else
      render :new, status: :unprocessable_entity
    end
    
  end

  def show
    @word = Word.find(params[:id])
  end

  private

  def word_params
    params.require(:word).permit(:title, :description)
  end 
end