class Character < ActiveRecord::Base
  attr_accessible :game_id, :user_id, :name, :power_id, :str, :per, :end, :cha, :dex, :int, :luck, :cur_hp, :max_hp,:luck_points, :damage_melee, :damage_range, :inventory, :interest,:ap

def allocate_stats (user_id,pow_id)
    self.user_id = user_id
    self.power_id= pow_id
    #Case statements for each stat to decide real stats
    self.damage_melee = self.str+2
    if self.str = 4
      self.damage_melee +=1
    end
    #perception
    self.damage_range = self.per+1
    #endurance
    self.max_hp = ((self.end*5)+10)
    self.cur_hp = self.max_hp
    #luck
    
    self.luck_points = self.luck-1
    
    #dex
    case self.dex
    when 0
      self.ap = 3
    when 1
      self.ap = 4
    when 2
      self.ap = 5
    when 3
      self.ap = 5
    when 4
      self.ap = 7
    end
    
    self.save!
end

def set_damage
end

def set_hp
end

def set_luck_points
end


  
end
