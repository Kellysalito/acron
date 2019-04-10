class User::AcronymsController < ApplicationController
  before_action :authenticate_user!
  def new
    @acronym = Acronym.new
  end
  def create
    @acronym = current_user.acronyms.create(acronym_params)
    redirect_to user_acronym_path(@acronym)
  end
  def show
    @acronym = Acronym.find(params[:id])
  end

  private

  def acronym_params
    params.require(:acronym).permit(:acronym, :description)
  end
end
