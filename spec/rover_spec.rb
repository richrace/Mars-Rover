require 'spec_helper'
require './lib/grid'
require './lib/rover'
require './lib/states/facing_north_state'

describe Rover do
	describe "#initialize" do 
		it "can initialize with x,y, Grid and State params" do
			grid = Grid.new(10,10)
			rover = Rover.new(1, 2, grid, FacingNorthState.new)
			rover.location[:x].should == 1
			rover.location[:y].should == 2
			rover.state.class.should == FacingNorthState
		end
	end
end