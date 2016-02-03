
class Player
  POINTS = 100
  attr_reader :name, :points
  def initialize(name, points = POINTS)
    @name = name
    @points = POINTS
  end

  def attack(player)
    player.receive_damage
  end

  def receive_damage
    @points -= 10
  end
end
