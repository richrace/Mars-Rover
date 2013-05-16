require 'spec_helper'
require './lib/grid'
require './lib/rover'
require './lib/states/facing_north_state'
require './lib/states/facing_west_state'
require './lib/states/facing_south_state'

describe "FacingSouthState" do 

	before(:each) do
		@state = FacingSouthState.new
	end

	describe "#move" do
		it "can move backwards along y axis" do
			grid = Grid.new(10,10)
			rover = Rover.new(5, 5, grid, @state)

			rover.location[:y].should == 5
			@state.move(rover)
			rover.location[:y].should == 4
		end

		it "can not move backwards past 0" do
			grid = Grid.new(10,10)
			rover = Rover.new(0, 0, grid, @state)

			rover.location[:y].should == 0
			@state.move(rover)
			rover.location[:y].should == 0
		end
	end

	describe "#turn_left" do
		it "can move left and change rover's state to FacingEastState" do
			grid = Grid.new(10,10)
			rover = Rover.new(5, 5, grid, @state)

			rover.state.class.should == FacingSouthState
			@state.turn_left(rover)
			rover.state.class.should == FacingEastState
		end
	end

	describe "#turn_right" do
		it "can move right and change rover's state to FacingWestState" do
			grid = Grid.new(10,10)
			rover = Rover.new(5, 5, grid, @state)

			rover.state.class.should == FacingSouthState
			@state.turn_right(rover)
			rover.state.class.should == FacingWestState
		end
	end

	describe "#direction" do
		it "will return South String" do			
			@state.direction.should eq "South"
		end
	end
end