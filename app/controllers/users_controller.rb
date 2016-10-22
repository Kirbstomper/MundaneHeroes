class UsersController < ApplicationController
  
  def index
    @users = User.all
  end
  
  
  def create
    @user = User.create!(user_params)  # new way
    flash[:notice] = "#{@user.username} was successfully created."
    redirect_to users_path
  end
  
  
  private
  def user_params
    params.require(:user).permit(:username,:password)
  end
end