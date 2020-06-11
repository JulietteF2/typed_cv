class MessagesController < ApplicationController
  invisible_captcha only: [:create], honeypot: :subtitle

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to root_path
      flash[:notice] = "Thanks! I'll get back to you soon"
    else
      render 'pages/home'
      flash[:alert] = "Mail not valid"
    end
  end

  private

  def message_params
    params.require(:message).permit(:email, :name, :object, :content)
  end
end
