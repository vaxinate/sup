#!/bin/bash --login

rvm use 2.0.0

RAILS_ENV=test bundle install
RAILS_ENV=test rake db:drop
RAILS_ENV=test rake db:create
RAILS_ENV=test rake db:migrate
RAILS_ENV=test rake spec
