class FacingNorthState 
	def move(rover)
		wanted = rover.location[:y] + 1
		if rover.grid.limit[:y] >= wanted		
			rover.location[:y] = wanted
		end
	end

	def turn_left(rover)
		rover.state = FacingWestState.new
	end

	def turn_right(rover)
		rover.state = FacingEastState.new
	end

	def direction
		"North"
	end
end