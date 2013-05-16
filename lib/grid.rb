class Grid
	attr_accessor :limit

	def initialize(xlimit, ylimit)
    @limit = {}
		@limit[:x] = xlimit.to_i
		@limit[:y] = ylimit.to_i
		raise RangeError, "Zero (0) is not acceptable as a grid" if @limit[:x] <= 0 || @limit[:y] <= 0
	end
end
