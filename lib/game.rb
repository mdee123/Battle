
class Game

  attr_reader :player, :player2

  def initialize(player = Player.new, player2 = Player.new)
    @player = player
    @player = player2
  end

  def attack(player)
    player.receive_damage
  end
end
