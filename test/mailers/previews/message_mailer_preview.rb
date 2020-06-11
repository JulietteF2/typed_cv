# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class MessageMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/message_mailer/confirm
  def confirm
    message = Message.first
    MessageMailer.with(message: message).confirm
  end

  # Preview this email at http://localhost:3000/rails/mailers/message_mailer/forward
  def forward
    message = Message.first
    MessageMailer.with(message: message).forward
  end

end
