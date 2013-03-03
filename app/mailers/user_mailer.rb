class UserMailer < ActionMailer::Base
  default from: "shop@tadashishoji.com"
  
  
  def welcome_email(story)
    @story = story
    mail(:to => story.email_address, :subject => "Thank You for Subscribing to Our Newsletter")
  end
  
  def thank_you(story)
    @story = story
    mail(:to => story.email_address, :subject => "Thank you for submitting your story")
  end
  
  def test
    mail(:to => "rubenjohne@mgmail.com", :subject => "This is a test email")
  end
end
