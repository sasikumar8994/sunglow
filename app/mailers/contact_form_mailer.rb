class ContactFormMailer < ApplicationMailer

  def cf_notify_admin(contact_form)
    @contact_form = contact_form
    @url  = 'http://sunglowlighting.org'
    mail(from: 'info@sunglow.com', to: ['s.selva20@gmail.com', ' sales@sunglow-lighting.com', 'anbublacky@gmail.com'], subject: 'Someone contacted through the Website form')
  end

end
