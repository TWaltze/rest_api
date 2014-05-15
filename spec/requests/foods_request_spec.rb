require 'spec_helper'

describe "routes to a food" do
	it "get: /foods/1" do
		# create in database
		Food.create({'name' => 'Name', 'place' => 'Place'})

		# get REST GET request
		get "/foods/1"

		# test 'ok' response
		expect(response).to be_ok

		# parse JSON
		info = JSON::parse(response.body)
		expect(info['name']).to eq('Name')
		expect(info['place']).to eq('Place')
	end
end