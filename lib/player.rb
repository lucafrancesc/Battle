class Player
  attr_reader :name, :health_points

  HP = 100
  def initialize(name, hp = HP)
    @name = name
    @health_points = hp
  end

  def attack(player)
  end

end
