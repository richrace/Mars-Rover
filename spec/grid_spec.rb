require 'spec_helper'
require './lib/grid'

describe Grid do
	describe "#initialize" do 
		it "can accept 1 2 as valid params" do
			grid = Grid.new(1,2)
			grid.limit[:x].should == 1
			grid.limit[:y].should == 2
		end

		it "can accept '2' '4' as valid params" do
			grid = Grid.new('2','4')
			grid.limit[:x].should == 2
			grid.limit[:y].should == 4
		end

		it "can accept floats 1.3 2.6 but strip the point" do
			grid = Grid.new(1.3,2.6)
			grid.limit[:x].should == 1
			grid.limit[:y].should == 2
		end

		it "will raise exception if passed A 4 as params" do
			lambda { Grid.new("A", 4) }.should raise_error
		end

		it "will raise exception if passed 4 A as params" do
			lambda { Grid.new(4, "A") }.should raise_error
		end

		it "will raise exception if passed -2 4 as params" do
			lambda { Grid.new(-2, 4) }.should raise_error
		end

		it "will raise exception if passed 4 -2 as params" do
			lambda { Grid.new(4, -2) }.should raise_error
		end
	end
end
