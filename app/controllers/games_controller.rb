class GamesController < ApplicationController
  def index
    redirect_to users_path
  end
  
  def show
    id = params[:id]
    @game = Game.find(id)
    @characters = Character.where(game_id: @game.game_id)
  end
  
  def create
    @game = Game.create!(game_params)
    @game.gm_id= session[:id]
    @game.save!
    redirect_to users_path(session[:id])
  end
  
  def destroy
    @game = Game.find params[:id]
    Character.delete_all(game_id: @game.game_id)
    @game.destroy
    flash[:notice] = "Game was deleted"
    redirect_to users_path
  end
  
  def edit
    @game = Game.find params[:id]
  end
  
  def update
    @game = Game.find params[:id]
    @game.update_attributes!(game_edit_params)
    redirect_to users_path(session[:id])
  end
  
    private
  def game_params
    params.require(:game).permit(:game_title,:game_id)
  end
  
  def game_edit_params
    params.require(:game).permit(:game_title,:description)
  end
end