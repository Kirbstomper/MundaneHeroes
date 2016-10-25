class UsersController < ApplicationController
  
  def index
    if session[:id]
      redirect_to user_path(session[:id]) and return
    end
  end
  def new
  end
  
  def login
    user = User.find_by(username: params[:username])
    if user &&user.authenticate(params[:password])
      session[:id] = user.id
      redirect_to user_path(session[:id]) and return
      return
    else
      flash[:notice] = "YOU FUCKED UP"
      redirect_to users_path
      return
    end
  end

  
  def logout
    session.clear
    redirect_to users_path
  end
  def create
    user = User.find_by_username(params[:user][:username])
    if user!=nil
      if user.authenticate(params[:user][:password])
        session[:id] = user.id
        redirect_to user_path(session[:id])
      else
        flash[:notice] = "YOU FUCKED UP"
        redirect_to users_path and return
      end
  

    else
      @user = User.create!(user_params)  # new way
      @user.password = params[:password]
      flash[:notice] = "#{@user.username} was successfully created."
      redirect_to user_path(@user)
    end
  end
  
  
  
  def show
    id = params[:id] # retrieve movie ID from URI route
    @user = User.find(id) # look up user by unique ID
    if session[:id] == @user.id
      @games = Game.where(gm_id: session[:id])
      @characters = Character.where(user_id: session[:id])
      pow = Power.find(rand(1..Power.count))
      session[:pow] = pow.id
    else
      redirect_to users_path
    end
   
  end
    
  private
  
  def user_params
    params.require(:user).permit(:username,:password)
  end
end