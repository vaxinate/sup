source 'https://rubygems.org'
ruby '2.0.0'


gem 'rails', '~> 4.0.4'
gem 'pg'

# Frontend
gem 'jquery-rails'

# authentication and authorization
gem 'devise', '~> 3.2.2'
gem 'simple_token_authentication', git: 'https://github.com/vaxinate/simple_token_authentication.git'

#gem 'devise_invitable', :github => 'scambra/devise_invitable'
gem 'omniauth'
gem 'rolify'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'


# Utility gems
gem 'friendly_id'
gem 'dotenv'

# Turn down the volume on the logs
gem 'lograge'


group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'guard-bundler'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'foreman'
  gem 'capistrano'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
  gem 'railroady' # Generates database diagrams automagically
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'selenium-webdriver'
  gem 'poltergeist'
  gem 'simplecov'
  gem 'rspec-rails'
  gem 'pry'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'email_spec'
  gem 'parallel_tests'
  gem 'zeus', '~> 0.13.4.pre2'
  gem 'zeus-parallel_tests'
  gem 'rb-fsevent'
  gem 'guard'
end

group :production do
  gem 'unicorn'
end

group :production, :staging do
  gem 'newrelic_rpm'
  gem 'rails_12factor'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
