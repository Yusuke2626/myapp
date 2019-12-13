class QaformsController < ApplicationController

  def create

    @qatext = Qaform.new(text:qa_params[:text],user_id:current_user.id, house_id:params[:house_id])
    @qatext.save

      respond_to do |format|
        format.html {redirect_to house_path(params[:house_id])}
        format.json
      end

  end

  private

  def qa_params
    params.require(:qaform).permit(:text)
  end

end
