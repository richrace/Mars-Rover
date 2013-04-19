class FacingEastState
	def move(rover)
		wanted = rover.location[:x] + 1
		if rover.grid.xlimit >= wanted
			rover.location[:x] = wanted
			puts "Moving to X: #{rover.location[:x]} Y: #{rover.location[:y]}"
		end
	end

	def turn_left(rover)
		rover.state = FacingNorthState.new
	end

	def turn_right(rover)
		rover.state = FacingSouthState.new
	end

	def direction
		"East"
	end
end