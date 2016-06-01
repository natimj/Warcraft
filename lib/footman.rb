# http://classic.battle.net/war3/human/units/footman.shtml

class Footman < Unit
  attr_reader :health_points, :attack_power

  def initialize
    super(60, 10)
  end

  def attack!(enemy)
    if enemy.class==Barracks
      enemy.damage(((attack_power/2).ceil).to_i)
    else
      enemy.damage(attack_power)
    end
  end

  # def damage (points)
  #   @health_points -= points
  # end



  
    # Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
    
    # Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
  

end

# @footman = Footman.new
# p @footman.health_points