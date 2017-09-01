require 'httparty' 
require 'json'

class Currentweather
	include HTTParty

	base_uri 'http://api.openweathermap.org/data/2.5/weather?'

	def get_city_weather(city) 
		self.class.get("q=#{city}&APPID=658afbfe1ceeaeb1155e6c7bfbe41581")
	end

	
end

		# @weather = Currentweather.new
		# @response =(@weather.get_city_weather("London"))
	 # 	@response.each do |key,value|
	 # 		if key == 'weather'
	 # 			value.each do |k,v|
	 # 				if k == 'id'
	 # 					expect(v).to eq 52
	 # 				end
	 # 			end
	 # 		end
	 # 	end
	 # end

