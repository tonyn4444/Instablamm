class SessionsController < ApplicationController

  def new
    user = User.new
  end

  def create
    user = User.find_by_email(params[:email])
    # If the user exists AND the password entered is correct.
    if user && user.authenticate(params[:password])
      # Save the user id inside the browser cookie. This is how we keep the user 
      # logged in when they navigate around our website.
      session[:user_id] = user.id
      flash[:success] = "Login successful!"
      redirect_to user_posts_path(user.id)
    else
      flash[:error] = "Invalid email or password."
    # If user's login doesn't work, send them back to the login form.
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "Logout successful"
    redirect_to '/login'
  end

end