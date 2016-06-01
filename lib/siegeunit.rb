class SiegeEngine  < Unit
  attr_reader :health_points, :attack_power

  def initialize
    # @health_points = 35
    # @attack_power = 0
    super(400, 50)
  end

   def attack!(enemy)
    if enemy.class==Barracks
      enemy.damage(((attack_power*2).ceil).to_i) 
    elsif enemy.class==SiegeEngine
      enemy.damage(attack_power)
    else
      enemy.damage(0)
    end
  end


end