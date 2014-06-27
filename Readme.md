# Rails Boilerplate

A boilerplate for new projects. Leans toward installing and configuring things that we need for *most* projects
even if we don't need them for *all projects.*

## Installation

### Native prereqs

You probably already have these if you've worked on one of our projects before:

    brew install imagemagick elasticsearch pg phantomjs

### Installing the boilerplate

    git clone https://github.com/revelrylabs/rails_boilerplate.git <newprojectname>
    cd <newprojectname>
    # Edit app name in config/application.rb (two places)
    nano config/application.rb

    # Remove the origin git remote and set up the one for the real project
    git remote rename origin boilerplate
    git remote add origin https://github.com/revelrylabs/<newprojectname>.git

    bundle install

Will I eventually automate these steps? Yes. Sorry.

### Setting up DBs

By default, the boilerplate will use the application name followed by _development in underscore form as the db name.

The db user by default will be the application name (underscore form) and the db password will be the same.

#### Example:

Application name is TheExampleApplication.

|                             |                                     |
|-----------------------------|-------------------------------------|
| Database name (development) | the_example_application_development |
| Database user               | the_example_application             |
| Database password           | the_example_application             |

Either set these up or change them.

#### Migrations

Then, you will need to run the migrations to set up the database to support the standard functions/gems:

    rake db:migrate

## Secret Keys

Add a secret key to your .env file like this:

    echo "SECRET_KEY_BASE="`rake secret` >> .env

## Usage

    rails s
    
If you need to use realtime functionality from sync:

    foreman start faye

If you need search through elasticsearch:

    foreman start es


## Batteries Included

For the complete details, check the Gemfile.

Roughly:


|                   |                                                                       |
|-------------------|-----------------------------------------------------------------------|
| Frontend (HTML)   | Layout from HTML5Boilerplate                                          |
| Frontend (CSS)    | SASS, Bootstrap, Autoprefixer                                         |
| Frontend (JS)     | Coffeescript, Backbone, Marionette, EJS Templates, jQuery, modernizr  |
| Auth              | Devise                                                                |
| Utilities         | simple_form, dotenv, friendly_id                                      |
| CRUD              | active_admin                                                          |
| Delayed jobs/mail | Que, Que Mailer                                                       |
| Realtime          | Sync w/ Faye                                                          |
| Search            | searchkick (es)                                                       |
| Image Uploads     | carrierwave & minimagick                                              |
| wysiwyg           | bootsy & santize                                                      |
| test stack        | rspec, factory_girl, capybara, selenium, poltergeist, simple_cov, pry |

    
