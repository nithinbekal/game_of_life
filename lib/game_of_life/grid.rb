
class Grid
  attr_accessor :width,:height,:cells
  def initialize(width,height)
    @width = width
    @height = height
    @cells = []
    (1..@height).each do |i|
      (1..@width).each do |j|
        @cells << Cell.new(i,j,(rand(2)==1))
      end
    end
    set_neighbours
  end
  
  def total_cells
    @width * @height
  end
  
  def set_neighbours
    @cells.each do |c|
      c.neighbours = get_neighbours(c)
    end
  end
  
  def get_neighbours(cell)
    cells = []
    @cells.each do |c|
      if (c!=cell) && ((c.x-cell.x).abs<=1) && ((c.y-cell.y).abs<=1)
        cells << c
      end
    end
    cells
  end
  
  def set_cells_state=(states)
    @cells.each do |cell|
      cell.life = states[cell.x-1][cell.y-1]==1
    end
  end
  
  def evolve
    next_state = (0..@height-1).to_a.map do |i|
      (0..@width-1).to_a.map { |j| 0 }
    end
  end
end
