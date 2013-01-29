class StoriesController < ApplicationController
  before_filter :authenticate 
  
  def index
    @stories = Story.all
  end
  
  def new
    @story = Story.new
  end
  
  def create
    @story = Story.new(params[:story])
    
    respond_to do |format|
      if @story.save
        format.html { redirect_to story_path(@story) }
      else
        format.html { render :action => :new }
      end
      
    end  
      
  end
  
  def show
    @story = Story.find(params[:id])
  end
  
  def edit
    @story = Story.find(params[:id])
  end
  
  def update
    @story = Story.find(params[:id])
    
    respond_to do |format|
      if @story.update_attributes(params[:story])
        format.html { redirect_to story_path(@story) }
      else
        format.html { render :action => "edit" }  
      end
    end
    
  end
  
  def destroy
    @story = Story.find(params[:id])
    @story.destroy
    respond_to do |format|
      format.html { redirect_to stories_path }
    end
  end
  
end
