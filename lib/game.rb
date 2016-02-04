
class Game

  attr_reader :player, :player2

  def initialize(player, player2)
    @player = player
    @player2 = player2
  end

  def attack(player)
    player.receive_damage
  end
end
