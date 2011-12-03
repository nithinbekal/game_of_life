
require 'spec_helper'

describe Grid do
  
  context "A new grid" do
    before do
      @grid = Grid.new(2,3)
    end
    
    it "should return correct height and width" do
      @grid.width.should  == 2
      @grid.height.should == 3
    end
    
    it "should have correct number of cells" do
      @grid.cells.count.should == 6
    end
    
    it "should initialize cells with correct co-ordinates" do
      @grid.cells[1].x.should == 1
      @grid.cells[1].y.should == 2
    end
  end
  
  context "when setting state" do
    before do
      @grid = Grid.new(2,3)
    end
    
    it "should accept user defined states" do
      state = [[0,1], [1,1], [0,0]]
      @grid.set_cells_state = state
      @grid.cells.map(&:life).should == [false, true, true, true, false, false]
    end
  end
  
  context "grid" do
    before do
      @grid = Grid.new(3,3)
      @grid.set_cells_state = [[1,1,1],[1,1,1],[0,0,0]]
    end
    
    it "should evolve" do
      @grid.evolve.should = [[1,0,1][1,0,1],[0,1,0]]
    end
  end
end