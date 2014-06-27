RailsBoilerplate::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  Dotenv.load

  config.eager_load = false

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # ActionMailer Config
  config.action_mailer.default_url_options = { :host => 'localhost', :port => 3000 }
  config.action_mailer.delivery_method = :smtp
  # change to true to allow email to be sent during development
  config.action_mailer.perform_deliveries = true
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.default :charset => "utf-8"

  # Generate digests for assets URLs
  config.assets.digest = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Raise exception on mass assignment protection for Active Record models
  config.active_record.mass_assignment_sanitizer = :strict

  # Do not compress assets
  config.assets.compress = false

  # Expands the lines which load the assets
  config.assets.debug = true

  config.lograge.enabled = true
  # Alter lograge defaults so that we still list params
  config.lograge.custom_options = lambda do |event|
    params = event.payload[:params]
    {:params => params }
  end

  config.action_mailer.smtp_settings = {
    :port =>           '587',
    :address =>        'smtp.mandrillapp.com',
    :user_name =>      ENV['MANDRILL_USERNAME'],
    :password =>       ENV['MANDRILL_APIKEY'],
    :domain =>         Rails.application.config.action_mailer.default_url_options[:host],
    :authentication => :plain
  }
  config.action_mailer.default_options = { from: ENV['MANDRILL_SENDER'] || "no-reply@example.org" }
end
