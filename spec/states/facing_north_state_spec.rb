require './lib/grid'
require './lib/rover'
require './lib/states/facing_north_state'
require './lib/states/facing_west_state'
require './lib/states/facing_east_state'

describe "FacingNorthState" do 

	describe "#move" do
		it "can move forwards along x axis" do
			grid = Grid.new(10,10)
			rover = Rover.new(5, 5, grid, FacingNorthState.new)

			rover.location[:y].should == 5
			rover.state.move(rover)
			rover.location[:y].should == 6
		end

		it "can not move forwards past 10" do
			grid = Grid.new(10,10)
			rover = Rover.new(10, 0, grid, FacingNorthState.new)

			rover.location[:x].should == 10
			rover.state.move(rover)
			rover.location[:x].should == 10
		end
	end

	describe "#turn_left" do
		it "can move left and change rover's state to FacingSouthState" do
			grid = Grid.new(10,10)
			rover = Rover.new(5, 5, grid, FacingNorthState.new)

			rover.state.class.should == FacingNorthState
			rover.state.turn_left(rover)
			rover.state.class.should == FacingWestState
		end
	end

	describe "#turn_right" do
		it "can move right and change rover's state to FacingNorthState" do
			grid = Grid.new(10,10)
			rover = Rover.new(5, 5, grid, FacingNorthState.new)

			rover.state.class.should == FacingNorthState
			rover.state.turn_right(rover)
			rover.state.class.should == FacingEastState
		end
	end
end