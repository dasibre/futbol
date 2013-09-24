require 'json'
require 'rest-client'

class RemoteSource
	def self.get_athelete
		athletes = JSON.load(RestClient.get("http://api.espn.com/v1/sports/soccer/eng.1/athletes/?apikey=v8d9kevgqcurjkdhtnamx6jm"))
		athletes["sports"][0]["leagues"][0]["athletes"].each do |player|
			Player.create!(first_name: player["firstName"], last_name: player["lastName"])	
		end
	end
end