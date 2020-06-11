class MessageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.confirm.subject
  #
  def confirm
    @message = params[:message]
    mail(to: @message.email, subject: 'Thanks for reaching out!')
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.forward.subject
  #
  def forward
    @message = params[:message]
    mail(to: 'cv.juliette.ferrer@gmail.com', subject: "#{@message.name}: #{@message.object}")
  end
end
