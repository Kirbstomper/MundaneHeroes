class CharactersController < ApplicationController
  
  def create
    #Power is generated before the 

    #creates according to variables in view
    points_spent =(params[:character][:str].to_i + params[:character][:per].to_i+ params[:character][:int].to_i + params[:character][:end].to_i+ params[:character][:cha].to_i + params[:character][:dex].to_i + params[:character][:luck].to_i)
    
    if points_spent!= 15 
      if points_spent<15
        flash[:notice] = "Your stat total is too low, please try again"
      
      elsif points_spent>15
        flash[:notice] = "Your stat total is too high, please try again"
      end      
      redirect_to new_character_path and return
    end
    
    if Game.find_by_game_id(params[:character][:game_id]) == nil
      flash[:notice] = "The game you are trying to join does not exist"
      redirect_to new_character_path and return
    end
    
    char = Character.create!(char_params)
    char.allocate_stats(session[:id], session[:pow])
    #Updates variables inside of the regular class
    redirect_to user_path(session[:id])
    
  end
  
  def show
    id = params[:id]
    @character = Character.find(id)
    if @character.user_id != session[:id] and Game.find_by_game_id(@character.game_id).gm_id !=session[:id]
      redirect_to users_path and return
    end
  end
  
  def new
  end
  
  def edit
    @character = Character.find params[:id]
  end
  
  def update
    @character = Character.find params[:id]
    @character.update_attributes!(char_edit_params)
    redirect_to character_path(@character.id)
  end
  
  def destroy
    @character = Character.find params[:id]
    @character.destroy
    flash[:notice] = "Player was deleted"
    redirect_to users_path
  end
  
  private
  def char_params
    params.require(:character).permit(:game_id,:name,:str,:per,:end,:cha,:dex,:int,:luck)
  end
  
  def char_edit_params
    params.require(:character).permit(:cur_hp,:luck_points,:interest,:inventory)
  end
  
end
