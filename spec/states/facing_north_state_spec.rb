require 'spec_helper'
require './lib/grid'
require './lib/rover'
require './lib/states/facing_north_state'
require './lib/states/facing_west_state'
require './lib/states/facing_east_state'

describe "FacingNorthState" do 

	before(:each) do
		@state = FacingNorthState.new
	end

	describe "#move" do
		it "can move forwards along x axis" do
			grid = Grid.new(10,10)
			rover = Rover.new(5, 5, grid, @state)

			rover.location[:y].should == 5
			@state.move(rover)
			rover.location[:y].should == 6
		end

		it "can not move forwards past 10" do
			grid = Grid.new(10,10)
			rover = Rover.new(10, 0, grid, @state)

			rover.location[:x].should == 10
			@state.move(rover)
			rover.location[:x].should == 10
		end
	end

	describe "#turn_left" do
		it "can move left and change rover's state to FacingWestState" do
			grid = Grid.new(10,10)
			rover = Rover.new(5, 5, grid, @state)

			rover.state.class.should == FacingNorthState
			@state.turn_left(rover)
			rover.state.class.should == FacingWestState
		end
	end

	describe "#turn_right" do
		it "can move right and change rover's state to FacingEastState" do
			grid = Grid.new(10,10)
			rover = Rover.new(5, 5, grid, @state)

			rover.state.class.should == FacingNorthState
			@state.turn_right(rover)
			rover.state.class.should == FacingEastState
		end
	end

	describe "#direction" do
		it "will return North String" do
			@state.direction.should eq "North"
		end
	end
end