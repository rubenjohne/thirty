class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.authenticate(params[:session][:email],
                             params[:session][:password])
    if user.nil?
      flash.now[:error] = "Invalid email/password combination"
      @title = "Sign in"
      render 'new'
    else
      # sign the user in then redirect to the user show page
      sign_in user
      redirect_to user
    end                             
  end
  
  def destroy
    sign_out
    redirect_to root_path
  end
  
end
