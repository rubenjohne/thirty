class PagesController < ApplicationController

  def home
    @stories = Story.featured
  end
  
  def submit
    @story = Story.new
  end
  
  
  def story
    @story = Story.find_by_participant_number(params[:participant_number])
    unless !@story.nil? || @story.active?  
      redirect_to :action => :home
    end
  end
  
end
