class FacingSouthState
	def move(rover)
		wanted = rover.location[:y] - 1
		if wanted >= 0
			rover.location[:y] = wanted
		end
	end

	def turn_left(rover)
		rover.state = FacingEastState.new
	end

	def turn_right(rover)
		rover.state = FacingWestState.new
	end

	def direction
		"South"
	end
end