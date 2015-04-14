class Edumailer < ApplicationMailer
  def send(edumail)
    @edumail=edumail
    mail(to: @edumail.email, subject:"Greetings")
  end
end
