source 'https://rubygems.org'
ruby '2.0.0'
gem 'jwt', '0.1.11'
gem 'rails', '~> 4.0.4'

gem 'pg'
gem 'sprockets', '2.10.1'

# Frontend
gem 'sass'
gem 'sass-rails'
#gem 'bootstrap-sass'
gem 'foundation-rails'
gem 'autoprefixer-rails'
# Don't need this if we use foundation, foundation comes with modernizr
#gem 'modernizr-rails' # Detects support for browser features and gives you media queries in JS
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
# - Use backbone for frontend templates
gem 'backbone-rails', '~> 1.1.0'
gem 'marionette-rails', '~> 1.6.2'
gem 'ejs', '~> 1.1.1'
# - Let us progressively enhance with local dates!
gem 'momentjs-rails'
gem 'detect_timezone_rails'
gem 'font-awesome-sass'
gem 'therubyracer', :platform => :ruby
gem 'libv8', '3.16.14.3'
gem 'tilt-jade'
gem 'jader'

gem 'twitter-typeahead-rails'

# Realtime stuff
gem 'faye'
gem 'thin', require: false
gem 'sync'

# authentication and authorization
gem 'devise', '~> 3.2.2'
gem 'simple_token_authentication', git: 'https://github.com/vaxinate/simple_token_authentication.git'
#gem 'devise_invitable', :github => 'scambra/devise_invitable'
gem 'omniauth'
#gem 'omniauth-linkedin-oauth2'
#gem 'omniauth-facebook'
#gem 'omniauth-twitter'
#gem 'cancan'
gem 'rolify'

# image uploads
gem 'carrierwave', '~> 0.9.0'
gem 'mini_magick', '~> 3.7.0'
gem 'unf'
gem 'fog', '~> 1.19.0'
gem 'data_uri'

# video embeds
gem 'video_info'

# Que and Que mailer-- background tasks and mail
gem 'que', '~> 0.6.0'
gem 'que_mailer' # The maintainer of this gem is very handsome

# In app messaging
gem 'mailboxer'

# Following/followers
gem 'acts_as_follower'

# Search
gem "searchkick"
# For paginating-- fights with active_admin and rails_admin
#gem 'will_paginate'
# Works with the admins:
gem 'kaminari'

# CRUD Admin
#gem 'activeadmin', github: 'gregbell/active_admin' # We track this github because that's how we get rails 4 support
# remember to do: rails g active_admin:install --skip-users

# Trying out rails_admin
gem 'rails_admin'
gem 'rails_admin_nestable'
gem 'ancestry'

# Static pages
gem 'high_voltage'

# User wysiwyg rich text editing stuff
gem 'sanitize'
#gem 'bootsy'
gem 'pagedown-rails'
gem 'redcarpet'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

# SEO
gem 'sitemap_generator'

# Utility gems
gem 'friendly_id'
gem 'dotenv'
gem 'simple_form'
gem 'country_select'
gem 'draper'

# Turn down the volume on the logs
gem 'lograge'

# 'merica! (lets us use mm/dd/yyyy dates)
gem 'american_date'

# Fake users/collisions
gem 'populator'
gem 'faker'

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
