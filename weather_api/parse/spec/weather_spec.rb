require 'spec_helper'

describe 'Currentweather' do 

	before(:all) do 
		@weather = Currentweather.new
		@response =(@weather.get_city_weather("London"))
	end
	it 'response should not be empty' do
		expect(@response).not_to be_empty
	end 
	it 'should include a coordinates key called coord' do
		expect(@response).to include 'coord' 
	end

	it "should return a coordinates key that to include lon value " do 
		expect(@response['coord']).to include "lon"
	end

	it 'should return a cordinates key that includes lat value' do 
		expect(@response['coord']).to include "lat"
	end

	it 'lat key should have a value that is is a Float' do 
		@response["coord"].each do |k,v|
			if k == 'lat'
				expect(v.class).to eq Float
			end
		end
	end

	it "should have weather key that value is a Array" do 
		expect(@response['weather'].class).to eq Array
	end

	it 'should weather key should have an id with an integer value of 521' do

		expect(@response['weather'][0]['id']).to eq 500

	 	# @response.each do |key,value|
	 	# 	if key == 'weather'
	 	# 		# expect(value.class).to eq Array
	 	# 		# expect(value[0].class).to eq Hash
	 	# 		value[0].each do |k,v|
		 # 			if k == 'id'
		 # 				expect(v).to eq 500
		 # 			end
	 			
	 	# 		end
	 	# 	end
	 # 			value.each do |k,v|
	 # 				if k == 'id'
	 # 					expect(v).to eq 52
	 # 				end
	 # 			end
	 # 		end
	 # 	end
	  	# end
	 end






end