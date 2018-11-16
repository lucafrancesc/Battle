require_relative 'player'

class Game
  
  attr_reader :player1, :player2, :current_player

  def initialize(player1, player2, current_player = nil)
    @player1 = player1
    @player2 = player2
    @current_player = @player1
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def attack(player)
    player.lost? ? 'You lost' : player.receive_damage
  end

  def switch_player
    (@current_player == @player1) ? (@current_player = @player2) : (@current_player = @player1)
  end

end
