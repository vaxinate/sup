Rails.application.config.action_mailer.smtp_settings = {
  :port =>           '587',
  :address =>        'smtp.mandrillapp.com',
  :user_name =>      ENV['MANDRILL_USERNAME'],
  :password =>       ENV['MANDRILL_APIKEY'],
  :domain =>         Rails.application.config.action_mailer.default_url_options[:host],
  :authentication => :plain
}
Rails.application.config.action_mailer.default_options = { from: ENV['MANDRILL_SENDER'] || "no-reply@example.org" }
