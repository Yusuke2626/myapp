class UsersController < ApplicationController

  def show
    @houses = current_user.houses.all.page(params[:page]).per(3).order('created_at DESC')
  end

  def index
    @favorites = current_user.favorites
  end
  # def likes
  #   @favhouses = current_user.favhouses.all
  # end


end
