class SessionsController < ApplicationController
  def new
  end
  def create
  	user = User.find_by(email: params[:session][:email].downcase)
  	if user && user.authenticate(params[:session][:password])
      redirect_to(user)
      remember(user)
      log_in(user)
  	else
      @loc = "Invalid email or password"
      render 'new'

  	end
  end
  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
