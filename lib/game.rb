
class Game

  attr_reader :player, :player2, :current_player

  def initialize(player, player2)
    @player = player
    @player2 = player2
    @current_player = @player
  end

  def attack(player)
    player.receive_damage
  end

  def switch_player
    if @current_player == @player
      @current_player = @player2
    else
      @current_player = @player
    end
  end

end
