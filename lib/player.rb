class Player
  DEFAULT_HIT_POINTS = 100
  attr_reader :name

  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HIT_POINTS
  end

  def hit_points
    @hit_points
  end

  def receive_damage
    @hit_points -=10
  end
end
