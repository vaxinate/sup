# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'pry'
require 'rspec/rails'
#require 'email_spec'
require 'rspec/autorun'

require 'capybara/rspec'
require 'capybara/rails'
require 'capybara/poltergeist'

Capybara.run_server = true
Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app)
end
Capybara.javascript_driver = :poltergeist

Capybara.server_port = 3001
Capybara.default_host = "localhost"
Capybara.app_host = "http://localhost:3001"

require 'simplecov'
SimpleCov.start

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

RSpec.configure do |config|
  #config.include(EmailSpec::Helpers)
  #config.include(EmailSpec::Matchers)
  config.include FactoryGirl::Syntax::Methods
  config.include Capybara::DSL
  # ## Mock Framework
  #
  # If you prefer to use mocha, flexmock or RR, uncomment the appropriate line:
  #
  # config.mock_with :mocha
  # config.mock_with :flexmock
  # config.mock_with :rr

  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.

  # Turned to false because this causes selenium tests to not work correctly with
  # devise -- RP
  config.use_transactional_fixtures = false

  # If true, the base class of anonymous controllers will be inferred
  # automatically. This will be the default behavior in future versions of
  # rspec-rails.
  config.infer_base_class_for_anonymous_controllers = false

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = "random"

  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each, :js => true) do
    DatabaseCleaner.strategy = :truncation
  end

  config.before(:each) do
    DatabaseCleaner.start
  end
  config.after(:each) do
    DatabaseCleaner.clean
  end
end
