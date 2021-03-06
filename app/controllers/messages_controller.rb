class MessagesController < ApplicationController

    def new
      @mail = Message.new
      @house = House.find(params[:house_id])
      @receive_mails =Message.where(to_user_id:current_user.id)
      @new_mail = @receive_mails.where(open_num:0)
      @to_user = User.find(@house.user_id)
      if params[:id]
        @from_user = User.find(params[:id])
      end

    end

    def create

      @mail = Message.new(tittle:mail_params[:tittle],text:mail_params[:text],open_num:mail_params[:open_num],to_user_id:mail_params[:to_user_id],user_id:current_user.id,house_id:params[:house_id])
      @mail.save!
      flash[:notice] = "メールの送信が完了しました。"

    end

    def search


    end


    def index
      @mails = current_user.messages.all
      @receive_mails = Message.where(to_user_id:params[:user_id]).page(params[:page]).per(5).order('created_at DESC')
      @send_mails = Message.where(user_id:params[:user_id]).page(params[:page]).per(5).order('created_at DESC')
      @new_mail = @receive_mails.where(open_num:0).page(params[:page]).per(5).order('created_at DESC')
      @send_mail_request = params[:request]

    end

    def show
      @mail = Message.find(params[:id])
      @mails = current_user.messages.all
      @receive_mails = Message.where(to_user_id:current_user.id)
      @new_mail = @receive_mails.where(open_num:0)
      @send_mails = Message.where(user_id:params[:user_id])

      @to_user = User.find(@mail.to_user_id)
      @from_user = User.find(@mail.user_id)
      if @mail.to_user_id == current_user.id && @mail.open_num == 0
         @mail.update(open_num:1)
      end

    end


     private
    def mail_params
      params.require(:message).permit(:tittle,:text,:to_user_id,:open_num)
    end



end
