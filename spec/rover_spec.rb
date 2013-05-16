require 'spec_helper'
require './lib/grid'
require './lib/rover'
require './lib/states/facing_north_state'

describe Rover do

  before(:each) do
    @grid = Grid.new(10,10)
  end

	describe "#initialize" do 
		it "can initialize with x,y, Grid and State params" do
			rover = Rover.new(1, 2, @grid, FacingNorthState.new)
			rover.location[:x].should == 1
			rover.location[:y].should == 2
			rover.state.class.should == FacingNorthState
		end
	end

  describe "#move" do
    it "will parse a string in correct format and move to the correct position" do
      rover = Rover.new(1, 2, @grid, FacingNorthState.new)
      rover.move("LMLMLMLMM")
      rover.location[:x].should eq 1
      rover.location[:y].should eq 3
      rover.state.direction.should eq "North"
    end
  end

  describe "#current_position" do
    it "will print the correct location in a string" do
      rover = Rover.new(1, 2, @grid, FacingNorthState.new)

      rover.current_position.should eq "X: 1 Y: 2 Facing: North"
    end
  end
end