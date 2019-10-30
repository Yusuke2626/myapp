class QaformsController < ApplicationController

  def create
    Qaform.create(text:qa_params[:text], user_id:current_user.id, house_id:qa_params[:house_id])
    redirect_back(fallback_location:house_qaforms_path)
  end

  private
  def qa_params
    params.permit(:house_id,:text)
  end

end
