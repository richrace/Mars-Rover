class FacingEastState
	def move(rover)
		wanted = rover.location[:x] + 1
		if rover.grid.limit[:x] >= wanted
			rover.location[:x] = wanted
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