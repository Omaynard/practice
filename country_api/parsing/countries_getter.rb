require 'httparty'
require 'json'

class Countries

	include HTTParty

	base_uri 'https://restcountries.eu/rest/v2'

	def all_countries
		self.class.get("/all")
	end

end
x = Countries.new 
 puts x.all_countries
