class Game < ActiveRecord::Base
  attr_accessible :game_title, :game_id, :gm_id, :description
  validates_uniqueness_of :game_id
  
  
  #When passed a game_id returns if it exists or not
  def exist? game_id
    return Game.find_by_game_id(game_id)
  end
  
end
