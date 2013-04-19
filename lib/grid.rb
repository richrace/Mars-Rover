class Grid
	attr_accessor :xlimit, :ylimit

	def initialize(xlimit, ylimit)
		@xlimit = xlimit.to_i
		@ylimit = ylimit.to_i
		raise RangeError, "Zero (0) is not acceptable as a grid" if @xlimit <= 0 || @ylimit <= 0
	end
end
