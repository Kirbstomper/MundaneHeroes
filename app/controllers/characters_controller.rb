class CharactersController < ApplicationController
  
  def create
    #Power is generated before the 

    #creates according to variables in view
    points_spent =(  params[:character][:str].to_i + params[:character][:per].to_i+ params[:character][:int].to_i + params[:character][:end].to_i+ params[:character][:cha].to_i + params[:character][:dex].to_i + params[:character][:luck].to_i)
    
    if points_spent!= 15 
      redirect_to new_character_path and return
    end
    
    char = Character.create!(char_params)
    char.user_id = session[:id]
    char.power_id= session[:pow]
    #Case statements for each stat to decide real stats
    char.damage_melee = char.str+2
    if char.str = 4
      char.damage_melee +=1
    end
    #perception
    char.damage_range = char.per+1
    #endurance
    char.max_hp = ((char.end*5)+10)
    char.cur_hp = char.max_hp
    #luck
    
    char.luck_points = char.luck-1
    
    #dex
    case char.dex
    when 0
      char.ap = 3
    when 1
      char.ap = 4
    when 2
      char.ap = 5
    when 3
      char.ap = 5
    when 4
      char.ap = 7
    end
    
    char.save!
    #Updates variables inside of the regular class
    redirect_to user_path(session[:id])
    
  end
  
  def show
    id = params[:id]
    @character = Character.find(id)
    if @character.user_id!=session[:id] || Game.find_by_game_id(@character.game_id)!=session[:id]
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
