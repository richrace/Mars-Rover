class FacingNorthState 
	def move(rover)
		wanted = rover.location[:y] + 1
		if rover.grid.ylimit >= wanted		
			rover.location[:y] = wanted
			puts "Moving to X: #{rover.location[:x]} Y: #{rover.location[:y]}"
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