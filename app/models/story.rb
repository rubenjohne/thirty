class Story < ActiveRecord::Base
  attr_accessible :about_me, :anecdote, :approved, :company, :email_address, :image_filename, :mailing_address, :name, :participant_number, :featured, :active
  attr_accessible :picture, :picture_with_count, :black_and_white
  
  scope :featured, where(:featured => true).order('participant_number ASC')
  
  has_attached_file :picture, styles: {
    thumb: "115x155>",
    regular: "240x240>" 
  }
  
  has_attached_file :picture_with_count 
  has_attached_file :black_and_white 
  
  
end
