class Player

  attr_reader :name, :hit_points
  DEFAULT_HIT_POINTS = 15
  
  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def attack(player)
    player.take_damage
  end

  def take_damage
    @hit_points -= 10
  end
end