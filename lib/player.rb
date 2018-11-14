class Player
  attr_reader :name, :hp

  HP = 100
  def initialize(name, hp = HP)
    @name = name
    @hp = hp
  end

  def attack(player)
    player.receive_damage
  end

  def receive_damage
    @hp -= 10
  end

end
