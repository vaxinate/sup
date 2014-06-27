class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  after_action :set_csrf_cookie

  def set_csrf_cookie
    if protect_against_forgery?
      headers['X-XSRF-TOKEN'] = form_authenticity_token
    end
  end

  acts_as_token_authentication_handler_for User
end
