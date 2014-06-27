class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def all
    user = User.from_omniauth(request.env["omniauth.auth"])
    if user.persisted?
      sign_in_and_redirect user
    else
      # We stash these here so that devise knows to prefill the registration
      # fields with the right errors and data
      session["devise.user_attributes"] = user.attributes
      redirect_to new_user_registration_url
    end
  end

  alias_method :linkedin, :all
end
