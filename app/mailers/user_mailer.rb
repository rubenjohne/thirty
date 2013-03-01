class UserMailer < ActionMailer::Base
  default from: "rubenjohne@gmail.com"
  
  
  def welcome_email(story)
    @story = story
    mail(:to => story.email_address, :subject => "Thank you for subscribing to our newsletter")
  end
  
  def thank_you(story)
    @story = story
    mail(:to => story.email_address, :subject => "Thank you for submitting your story")
  end
end
