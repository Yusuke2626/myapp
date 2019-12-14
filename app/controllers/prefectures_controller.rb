class PrefecturesController < HousesController

  def index
   @house = House.new
  end


  def search
    @houses = House.where(prefecture_id:params[:house][:prefecture_id]).page(params[:page]).per(5).order('created_at DESC')
    @house_i = House.find_by(prefecture_id:params[:house][:prefecture_id])
    @house = House.new

  end

end
