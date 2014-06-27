class ApplicationMailer < ActionMailer::Base
  include Que::Mailer
  add_template_helper(ApplicationHelper)
  default :from => Rails.application.config.action_mailer.default_options[:from]
  layout 'layouts/email'
end
