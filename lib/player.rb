class Player
  
  attr_reader :name, :hp

  HP = 100
  def initialize(name, hp = HP)
    @name = name
    @hp = hp
  end

  def receive_damage
    @hp -= 10
  end

  def lost?
    self.hp <= 0
  end

end
