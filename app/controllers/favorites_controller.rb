class FavoritesController < ApplicationController

  def create
    house = House.find(params[:house_id])
    user = current_user
    Favorite.create(user_id: user.id,house_id:house.id)
    redirect_to houses_path
  end
  def destroy
    house = House.find(params[:house_id])
    user = current_user
    favorite = Favorite.find_by(user_id: user.id,house_id:house.id)
    favorite.delete
    redirect_to houses_path
  end

  def index
    @favorites = current_user.favorites.all.page(params[:page]).per(3).order('created_at DESC')
  end
end
