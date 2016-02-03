
class Player
  POINTS = 100
  attr_reader :name, :points
  def initialize(name)
    @name = name
    @points = POINTS
  end
end
