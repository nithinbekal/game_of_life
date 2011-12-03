
require 'spec_helper'

describe Cell do
  context "a new cell" do
    before do
      @cell = Cell.new(2,3)
    end

    it "should have x and y" do
      @cell.x.should == 2
      @cell.y.should == 3
    end
    
    it "should have life state" do
      @cell.should be_dead
    end
  end
  
  context "neighbor calculation" do
    before do
      @grid = Grid.new(2,3)
      @cell = @grid.cells[0]
    end
    
    it "should have three neighbors" do
      @cell.neighbours.count.should == 3
    end
  end
  
  context "life state" do
    before do
      @cell = Cell.new(2,3)
    end
    
    it "should be dead by default" do
      @cell.should_not be_alive
      @cell.should be_dead
    end
  end
end
