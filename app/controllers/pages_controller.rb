class PagesController < ApplicationController

  def home
    @stories = Story.featured
    # active stories for preloading images
    @active_stories = Story.active
  end
  
  def submit
    @story = Story.new
    @featured_stories = Story.featured    
  end
  
  def submitted
    @stories = Story.submitted
    @featured_stories = Story.featured  
  end
  

  def story
    # this is for the carousel menu on top
    if Story.exists?(params[:id])    
      @story = Story.find(params[:id])
      if @story.active 
        # check if this is a submitted story or a featured story to setup the back link 
        if @story.featured?
          @back_link = root_path
        else
          @back_link = pages_submitted_path  
        end  
        @featured_stories = Story.featured
        @active_stories = Story.active
      else 
        redirect_to root_path
      end        
    else 
      redirect_to root_path
    end   
  end
  
  
  def create
    @story = Story.new(params[:story])
    
    respond_to do |format|
      if @story.save
        if @story.subscribe?
          # if the user checked the subscribe email the welcome mail 
          UserMailer.welcome_email(@story).deliver        
        end  
        format.html { redirect_to pages_thanks_path }
      else
        @title = "Submit Your Story"
        format.html { render :action => :submit }
      end
      
    end      
  end
  
  
  def thanks
    @featured_stories = Story.featured
  end
  
  def testemail
    UserMailer.test.deliver
  end
  
end
