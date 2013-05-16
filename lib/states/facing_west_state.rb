class FacingWestState
	def move(rover)
		wanted = rover.location[:x] - 1
		if wanted >= 0
			rover.location[:x] = wanted
		end
	end

	def turn_left(rover)
		rover.state = FacingSouthState.new
	end

	def turn_right(rover)
		rover.state = FacingNorthState.new
	end

	def direction
		"West"
	end
end