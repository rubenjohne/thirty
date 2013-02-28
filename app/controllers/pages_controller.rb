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
  
  
  def create
    @story = Story.new(params[:story])
    
    respond_to do |format|
      if @story.save!
        format.html { redirect_to pages_thanks_path }
      else
        format.html { render :action => :story }
      end
      
    end      
  end
  
  
  def thanks
    
  end
  
end
