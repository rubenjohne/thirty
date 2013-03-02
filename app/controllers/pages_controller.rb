class PagesController < ApplicationController

  def home
    @stories = Story.featured
    # active stories for preloading images
    @active_stories = Story.active
  end
  
  def submit
    @story = Story.new
  end
  
  def submitted
    @stories = Story.submitted
  end
  
  def story
    @stories = Story.featured
    @active_stories = Story.active    
    @story = Story.find(params[:id])
  end
  
  
  def create
    @story = Story.new(params[:story])
    
    respond_to do |format|
      if @story.save
        #FIX for later to send email
        UserMailer.thank_you(@story).deliver        
        format.html { redirect_to pages_thanks_path }
      else
        @title = "Submit Your Story"
        format.html { render :action => :submit }
      end
      
    end      
  end
  
  
  def thanks
    
  end
  
  def testemail
    UserMailer.testemail
  end
  
end
