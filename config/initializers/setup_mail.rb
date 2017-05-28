if Rails.env.development?
  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.perform_deliveries = true
  ActionMailer::Base.raise_delivery_errors = true
  ActionMailer::Base.smtp_settings = {
    :address   => "smtp.gmail.com",
    :port      => 587, # ports 587 and 2525 are also supported with STARTTLS
    :domain => 'gmail.com', # your domain to identify your server when connecting
    :authentication => 'plain', # Mandrill supports 'plain' or 'login'
    :enable_starttls_auto => true, # detects and uses STARTTLS
    :user_name => "dummytestttt@gmail.com",
    :password  => "unleashedblacklove", # SMTP password is any valid API key
  }
  ActionMailer::Base.default_url_options[:host] = "http://localhost:3000"
else
  ActionMailer::Base.smtp_settings = {
    :address   => "smtp.gmail.com",
    :port      => 587, # ports 587 and 2525 are also supported with STARTTLS
    :domain => 'gmail.com', # your domain to identify your server when connecting
    :authentication => 'plain', # Mandrill supports 'plain' or 'login'
    :enable_starttls_auto => true, # detects and uses STARTTLS
    :user_name => "dummytestttt@gmail.com",
    :password  => "unleashedblacklove", # SMTP password is any valid API key
  }
  ActionMailer::Base.default_url_options[:host] = "https://gentle-inlet-80064.herokuapp.com"
end
