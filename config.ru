# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)

# This code starts faye and rails within the same rack process (which means the
# same dyno)

require "bundler/setup"
require "yaml"
require "faye"
require "sync"

Faye::WebSocket.load_adapter 'thin'

Sync.load_config(
  File.expand_path("../config/sync.yml", __FILE__),
  ENV["RAILS_ENV"] || "development"
)

map '/faye' do
  run Faye::RackAdapter.new({
        mount: "/",
        timeout: 30,
        extensions: [Sync::FayeExtension.new]
      })
end

map '/' do
  run Rails.application
end
