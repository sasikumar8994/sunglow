class ContactFormMailer < ApplicationMailer

  def cf_notify_admin(contact_form)
    @contact_form = contact_form
    @url  = 'http://example.com/login'
    mail(from: 'info@sunglow.com', to: ['s.selva20@gmail.com', 'anbublacky@gmail.com'], subject: 'Someone contacted through the form')
  end

end
