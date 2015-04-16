class Edumailer < ApplicationMailer
  default from: 'aroundofyou@gmail.com'

  def approve_email(edumail)
    @edumail=edumail
    @url='localhost:3000'
    mail(to: @edumail.email, subject:"Greetings")
  end
end
