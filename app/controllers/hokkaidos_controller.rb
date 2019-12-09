class HokkaidosController < HousesController

    def index
        @houses = House.where(prefecture_id:0).page(params[:page]).per(5).order('created_at DESC')
        render layout: false
    end
end
