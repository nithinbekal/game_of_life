
class Cell
  attr_accessor :x,:y, :neighbours, :life
  def initialize(x,y,life=false)
    @x=x
    @y=y
    @neighbours = []
    @life = life
  end
  
  def dead?
    @life == false
  end
  
  def alive?
    ! dead?
  end
end