class Rover
	attr_accessor :grid, :location, :state

	def initialize(x,y, grid, state)
		@grid = grid
		@location = {:x => x, :y => y}
		@state = state
	end

	def move(commands)
		commands.each_char do |command|
			case command
			when 'R'
				puts "Moving Right"
				@state.turn_right(self)
			when 'L'
				puts "Moving Left"
				@state.turn_left(self)
			when 'M'
				puts "Moving Forward"
				@state.move(self)		
			end
		end
	end

	def current_position
		"X: #{@location[:x]} Y: #{@location[:y]} Facing: #{@state.direction}"
	end
end