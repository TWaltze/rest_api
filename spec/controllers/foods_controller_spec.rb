require 'spec_helper'

describe FoodsController do
	before :each do
		@food = Food.new({'name' => 'Name', 'place' => 'Place'})
	end

	describe "#create" do
		it "takes two parameters and returns a Food object" do
			expect(@food).to be_an_instance_of Food
		end
	end
end

