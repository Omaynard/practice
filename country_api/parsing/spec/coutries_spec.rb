require 'spec_helper'
require_relative '../countries_getter'

describe 'Countries' do 


	it ' should return a hash ' do

		file = JSON.parse(HTTParty.get("https://restcountries.eu/rest/v2/all")) 

	end
end 