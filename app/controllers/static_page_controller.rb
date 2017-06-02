class StaticPageController < ApplicationController
  def home
  end

  def about_us
  end

  def contact_us
    @contact_form = ContactForm.new
  end
end
