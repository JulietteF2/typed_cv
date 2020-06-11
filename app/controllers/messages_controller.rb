class MessagesController < ApplicationController
  invisible_captcha only: [:create], honeypot: :subtitle

  def index
    redirect_to root_path
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      mailing_message(@message)
      redirect_to root_path
      flash[:notice] = "Thanks! I'll get back to you soon"
    else
      render 'pages/home'
      flash[:alert] = "Something went wrong... Try again"
    end
  end

  private

  def message_params
    params.require(:message).permit(:email, :name, :object, :content)
  end

  def mailing_message(message)
    MessageMailer.with(message: message).confirm.deliver_now
    MessageMailer.with(message: message).forward.deliver_now
  end
end
