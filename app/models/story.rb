class Story < ActiveRecord::Base
  attr_accessible :about_me, :anecdote, :approved, :company, :email_address, :image_filename, :mailing_address, :name, :participant_number
end
