class UsersController < ApplicationController
  def new
  	@user = User.new
  end
  def show
  	@user = User.find(params[:id])
  end
  def create
  	@user = User.new(params.require(:user).permit(:name,:email,:password,:password_confirmation))
  	if @user.save
  		flash[:success] = "Hello"
  		redirect_to(@user)
  	else
  		render '/users/new'
  	end	
  end
end
