class UsersController < ApplicationController
  
  def index
    if session[:id]
      redirect_to user_path(session[:id])
    end
  end
  
  
  def create
    @user = User.create!(user_params)  # new way
    @user.password = params[:password]
    flash[:notice] = "#{@user.username} was successfully created."
    redirect_to users_path
  end
  
  
  def show
    id = params[:id] # retrieve movie ID from URI route
    @user = User.find(id) # look up movie by unique ID
    session[:id] = id
    @games = Game.where(gm_id: session[:id])
  end
    
  private
  def user_params
    params.require(:user).permit(:username,:password)
  end
end