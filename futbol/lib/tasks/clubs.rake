require 'rspec/core/rake_task'
namespace :clubs do
	# desc "add players"
	# task :add_players => :environment do
	# 	require 'json'
	# 	require 'rest-client'
	# 	athletes = JSON.load(RestClient.get("http://api.espn.com/v1/sports/soccer/eng.1/athletes/?apikey=v8d9kevgqcurjkdhtnamx6jm"))
	# 	athletes["sports"][0]["leagues"][0]["athletes"].each do |player|
	# 		Player.create!(first_name: player["firstName"], last_name: player["lastName"])	
	# 	end
	# end

 
 desc "import clubs"
	 task :create_squad => :environment do
		require 'mechanize'
	 	@agent = Mechanize.new
	 	@player_fnames = []
	# 	@managers = []

		def get_player_names
			arsenal_squad_names = @agent.get("http://www.premierleague.com/en-gb/clubs/profile.squads.html/arsenal").search(".player-squadno a")
			arsenal_squad_names.each do |name|
				full_name = name.text.split
				name_parts = full_name.split
				first_name, last_name = name_parts[0].first, name_parts[-1].last
				Player.create!(first_name: first_name, last_name: last_name)
			end
		end

		get_player_names
		print @player_fnames
	end
end
	# 	def get_managers
	# 	 	@agent.get('http://www.premierleague.com/en-gb/clubs/managers/index.html?paramSeason=2013-2014').search('.name a').each do |manager|
	# 	 		@managers << manager.text
	# 	 	end
	# 	end

	# 	def create_clubs(clubs)
	# 		clubs.sample.each do |club|
	# 		Club.create!(name: club.last, manager: club.first)
	# 	end

	# 	get_clubs
	# 	get_managers
	# 	@club = @managers.zip(@clubs)
	# 	create_clubs(@club)

		

		# agent.get('http://www.premierleague.com/en-gb/clubs/managers/index.html?paramSeason=2013-2014').search('.name').each do |coach|
		# 	Club.all.each do |club|
		# 		manager = coach.text.strip
		# 		club.manager = manager
		# 		club.save
		# 	end
		# end
	# end