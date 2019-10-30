class TouhokusController < HousesController

  def index
    @houses = House.where("(prefecture_id = 1)or(prefecture_id = 2)or(prefecture_id = 3)or(prefecture_id = 4)or(prefecture_id = 5)or(prefecture_id = 6)").page(params[:page]).per(5).order('created_at DESC')
  end

end
