class Edumailer < ApplicationMailer
  default from: '2morrow2late10@rambler.ru'

  def approve_email(edumail)
    @edumail=edumail
    mail(to: @edumail.email, subject:"Request data")
  end
end
