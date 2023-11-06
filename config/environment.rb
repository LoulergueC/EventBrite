# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

# ActionMailer::Base.smtp_settings = {
#   :user_name => ENV['MAIL_LOGIN'],
#   :password => ENV['MAIL_PWD'],
#   :domain => 'loulergue.fr',
#   :address => 'mail1.netim.hosting',
#   :port => 465,
#   :authentication => :plain,
#   :enable_starttls_auto => true
# }

ActionMailer::Base.smtp_settings = {
  :user_name => ENV['MAILJET_LOGIN'],
  :password => ENV['MAILJET_PWD'],
  :domain => 'loulergue.fr',
  :address => 'in-v3.mailjet.com',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}