class Character < ActiveRecord::Base
  attr_accessible :game_id, :user_id, :name, :power_id, :str, :per, :end, :cha, :dex, :int, :luck, :cur_hp, :max_hp,:luck_points, :damage_melee, :damage_range, :inventory, :interest,:ap
end
