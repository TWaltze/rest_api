require 'spec_helper'

describe "routes to the foods controller" do
	it "routes a named route" do
		expect(:get => 'foods').
			to route_to(:format=> 'json', :controller => 'foods', :action => 'index')
	end
end