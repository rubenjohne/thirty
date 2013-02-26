class PagesController < ApplicationController

  def home
    @stories = Story.all
  end
  
  def submit
    @story = Story.new
  end
  
  
  def story
    @story = Story.find(params[:id])
  end
  
end
