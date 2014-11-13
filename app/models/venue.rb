class Venue < ActiveRecord::Base
	# attr_accessible :id, :name, :address, :email, :website, :phone, :alt_phone, :minimum_age, :description, :whats_cool, :tips_and_tricks, :outdoor_seating, :entrance_fee, :wheelchair_access, :gay_friendly, :owner_id, :lookup_parking_type_id, :lookup_city_id
	
	has_many 		:venue_tribes
	has_many 		:lookup_tribe_types, 		:through => :venue_tribes

	has_many 		:venue_cuisines
	has_many 		:lookup_cuisine_types, 	:through => :venue_cuisines

	has_many 		:venue_musics
	has_many 		:lookup_music_types, 		:through => :venue_musics

	has_many 		:venue_classifications
	has_many 		:lookup_venue_types, 		:through => :venue_classifications

	has_many 		:venue_ratings
	has_many 		:lookup_rating_types, :through => :venue_ratings

	has_many 		:events
	has_many 		:working_hours
	belongs_to 	:lookup_parking_type
	belongs_to 	:owner, 							:class_name => "User"
	belongs_to 	:lookup_city

	def self.search(params = {})
		@client = GooglePlaces::Client.new(ENV['GOOGLE_PLACES_KEY'])
		
		if (params["bar"] == '1')
			query_for_google = params["search"] + " bars"
			@result = @client.spots_by_query(query_for_google, :types => "bar", :radius => 9000)
		elsif (params["club"] == '1')
			query_for_google = params["search"] + " nightclubs"
			@result = @client.spots_by_query(query_for_google, :types => "night_club", :radius => 9000)
		elsif (params["food"] == '1')
			query_for_google = params["search"] + " establishments"
			@result = @client.spots_by_query(query_for_google, :types => ['cafe', 'restaurant'], :radius => 9000)
		else
			query_for_google = params["search"] + " establishments"
			@result = @client.spots_by_query(query_for_google, :types => ['bar', 'night_club', 'cafe', 'restaurant'], :radius => 9000)
		end

			

		# query_for_google = query + " establishments"
		# @client = GooglePlaces::Client.new(ENV['GOOGLE_PLACES_KEY'])
		# @result = @client.spots_by_query(query_for_google, :types => ['bar', 'night_club', 'cafe', 'restaurant'], :radius => 9000)

		# @place_id_array = @result.map { |venue| venue.place_id  }
		# @detailed_venue_info_array = []
		# @place_id_array.each { |place_id| @detailed_venue_info_array.push(@client.spot(place_id)) }
		# @detailed_venue_info_array
	end

	# def self.google_venue_place_id
	# 	@place_id_array = @result.map { |venue| venue.place_id  }
	# 	@place_id_array
	# end

	# def self.detailed_venue_info
	# 	self.google_venue_place_id
	# 	@detailed_venue_info_array = []
	# 	@place_id_array.each { |place_id| @detailed_venue_info_array.push(@client.spot(place_id)) }
	# 	@detailed_venue_info_array
	# end
end
