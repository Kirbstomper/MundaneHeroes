class GamesController < ApplicationController
  def index
    redirect_to users_path
  end
  
  def 
  def create
    @game = Game.create(game_params)
    @game.gm_id= session[:id]
    @game.save!
    redirect_to user_path(session[:id])
  end
  
    private
  def game_params
    params.require(:game).permit(:game_title,:game_id)
  end
end
