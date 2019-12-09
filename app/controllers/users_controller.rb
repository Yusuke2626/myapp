class UsersController < ApplicationController

  def show
    @houses = current_user.houses.all.page(params[:page]).per(3).order('created_at DESC')
    @mails = current_user.mails.all
    @receive_mails = Mail.where(to_user_id:params[:id])
    # @recieve_mails =
    @add = Address.find(4)
  end

  def index
    @favorites = current_user.favorites
  end
  # def likes
  #   @favhouses = current_user.favhouses.all
  # end


end
