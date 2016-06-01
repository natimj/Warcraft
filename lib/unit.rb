
class Unit
  attr_reader :health_points, :attack_power

  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def attack!(enemy_unit)
      enemy_unit.damage(attack_power) if !(dead?) && !(enemy_unit.dead?)
  end

  def damage (points)
    @health_points -= points
  end

  def dead?
    health_points==0
  end

end


# p Unit.new(0,3).dead?

# Unit.new.instance_variable_get(@hela)