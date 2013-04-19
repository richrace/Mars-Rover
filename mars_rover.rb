require './lib/grid'
require './lib/rover'
require './lib/states/facing_north_state'
require './lib/states/facing_west_state'
require './lib/states/facing_south_state'
require './lib/states/facing_east_state'

g1 = Grid.new(5,5)
r1 = Rover.new(1,2,g1,FacingNorthState.new)
puts "Starting position = #{r1.current_position}"
r1.move("LMLMLMLMM")
puts "Current position = #{r1.current_position}"

r2 = Rover.new(3,3,g1,FacingEastState.new)
puts "Starting position = #{r2.current_position}"
r2.move("MMRMMRMRRM")
puts "Current position = #{r2.current_position}"
