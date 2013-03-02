# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Thirty::Application.initialize!


 # Action Mailer configs
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
:address => "smtp10.exchangecentral.net", # instead of "smtp.yourdomain.com",
:port => 587,
:domain => "UC2",
:authentication => :login,
:user_name => "shop@tadashishoji.com",
:password => "Tadaerce19"
}