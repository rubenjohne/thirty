class PagesController < ApplicationController

  def home
    @stories = Story.featured
  end
  
  def submit
    @story = Story.new
  end
  
  
  def story
    @story = Story.find(params[:id])
  end
  
end
