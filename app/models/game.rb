class Game < ActiveRecord::Base
  attr_accessible :game_title, :game_id, :gm_id, :description
end
