require 'spec_helper'

describe StoriesController do
  render_views
  
  describe "user not signed in" do
  
    describe "GET 'index'" do
      
      it "should not be successful" do
        get :index
        response.should_not be_success 
      end
      
    end
    
    describe "GET 'new'" do
      
      it "should not be successful" do
        get :new
        response.should_not be_success
      end
    
    end

    describe "GET 'edit'" do
      
      before(:each) do
        @story = Factory(:story)
      end
      
      it "should not be successful" do
        get :edit, :id => @story
        response.should_not be_success
      end    
    
    end
    
  end
  
  describe "user signed in" do
    
    before(:each) do
      @user = Factory(:user)
      test_sign_in(@user)
    end
    
    describe "GET 'index'" do
      
      it "should be successful" do
        get :index
        response.should be_success 
      end
      
    end
    
    describe "GET 'new'" do
      
      it "should be successful" do
        get :new
        response.should be_success
      end
    
    end
    
    describe "POST 'create'" do
      
      before(:each) do
        @attr = {
          :participant_number => 1,
          :image_filename => "test.png",
          :about_me => "blah blah. BLACH @*&^$!!",
          :anecdote => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis et velit metus, ac dictum tortor",
          :name => "Juan Pedoro",
          :company => "Designer",
          :email_address => "user@example.com",
          :mailing_address => "3333 test st test city, TS 90058",
          :approved => true
        }
      end
      
      it "should redirect to the show page of the story" do
        post :create, :story => @attr
        response.should redirect_to story_path(assigns(:story))
      end
      
      it "should change record count" do
        lambda do
          post :create, :story => @attr
        end.should change(Story, :count).by(1)  
      end
      
    end
    
    describe "GET 'show'" do
      before(:each) do
        @story = Factory(:story)
      end
      
      it "should be successful" do
        get :show, :id => @story
        response.should be_success
      end
      
    end
    
    
    describe "GET 'edit'" do
      
      before(:each) do
        @story = Factory(:story)
      end
      
      it "should be successful" do
        get :edit, :id => @story
        response.should be_success
      end
      
    end

    describe "PUT 'update'" do

      before(:each) do
        @story = Factory(:story)
        @attr = {
          :participant_number => 1,
          :image_filename => "test.png",
          :about_me => "blah blah. BLACH @*&^$!!",
          :anecdote => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis et velit metus, ac dictum tortor",
          :name => "Juan Pedoro",
          :company => "Designer",
          :email_address => "user@example.com",
          :mailing_address => "3333 test st test city, TS 90058",
          :approved => true
        }        
      end
      
      it "should be successful" do
        put :update, :id => @story, :story => @attr
        @story.reload
        @story.name.should == "Juan Pedoro"
      end
      
    end
    
    describe "DELETE 'destroy'" do
      
      before(:each) do
        @story = Factory(:story)
      end
    
      it "should be successful" do
        lambda do 
          delete :destroy, :id => @story
        end.should change(Story, :count).by(-1)
      end
      
    end
    
  end  
  
end
