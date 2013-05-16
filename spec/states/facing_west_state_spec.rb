require 'spec_helper'
require './lib/grid'
require './lib/rover'
require './lib/states/facing_north_state'
require './lib/states/facing_west_state'
require './lib/states/facing_south_state'

describe "FacingWestState" do 

	describe "#move" do
		it "can move backwards along x axis" do
			grid = Grid.new(10,10)
			rover = Rover.new(5, 5, grid, FacingWestState.new)

			rover.location[:x].should == 5
			rover.state.move(rover)
			rover.location[:x].should == 4
		end

		it "can not move backwards past 0" do
			grid = Grid.new(10,10)
			rover = Rover.new(0, 0, grid, FacingWestState.new)

			rover.location[:x].should == 0
			rover.state.move(rover)
			rover.location[:x].should == 0
		end
	end

	describe "#turn_left" do
		it "can move left and change rover's state to FacingSouthState" do
			grid = Grid.new(10,10)
			rover = Rover.new(5, 5, grid, FacingWestState.new)

			rover.state.class.should == FacingWestState
			rover.state.turn_left(rover)
			rover.state.class.should == FacingSouthState
		end
	end

	describe "#turn_right" do
		it "can move right and change rover's state to FacingNorthState" do
			grid = Grid.new(10,10)
			rover = Rover.new(5, 5, grid, FacingWestState.new)

			rover.state.class.should == FacingWestState
			rover.state.turn_right(rover)
			rover.state.class.should == FacingNorthState
		end
	end
end