class ChargesController < HousesController

  def index
    @house = House.find_by(id:params[:house_id])
  end

end
