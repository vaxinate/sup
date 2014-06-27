RailsBoilerplate::Application.routes.draw do
  # High Voltage provides the logged out home with the pages/home.html.erb view

  # Devise controllers routed
  devise_for :users, controllers: { sessions: 'sessions', registrations: 'registrations' }
  #, ActiveAdmin::Devise.config
  #ActiveAdmin.routes(self)

  authenticated :user do
    # For logged in users-- probably put a logged in root page here
  end
end
