require_relative 'player'
class Game
  attr_reader :player1, :player2, :current_player

  def initialize(player1, player2, current_player = nil)
    @player1 = player1
    @player2 = player2
    @current_player = @player1
  end

  def attack(player)
    player.lost? ? 'You lost' : player.receive_damage
  end

  def switch_player
    (@current_player == @player1) ? (@current_player = @player2) : (@current_player = @player1)
  end


end
# p1 = Player.new 'luca'
# p2 = Player.new 'cesare'
# g = Game.new(p1, p2)
#
# p g.current_player
# g.switch_player
# p g.current_player
# puts
# g.attack(g.switch_player)
# p g.current_player
# puts
# g.attack(g.switch_player)
# p g.current_player
# puts
# g.attack(g.switch_player)
# p g.current_player
# puts
# g.attack(g.switch_player)
# p g.current_player
# puts
#
# p g.attack(g.switch_player)
# p g.current_player
# g.attack(g.switch_player)
# p g.current_player
# puts
