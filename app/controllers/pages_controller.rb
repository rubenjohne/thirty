class PagesController < ApplicationController

  def home
    @stories = Story.featured
    # active stories for preloading images
    @active_stories = Story.active
  end
  
  def submit
    @story = Story.new
  end
  
  
  def story
    @story = Story.find(params[:id])
  end
  
end
