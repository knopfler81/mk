class MessageMailer < ApplicationMailer

  # use your own email address here
  default :to => "knopfler42@.gmail.com"
  def message_me(message)
     @message = message

     mail from: @message.email, subject: @message.subject, body: @message.content
   end

end