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

	def search(query)
		query_for_google = query + " establishments"
		@client = GooglePlaces::Client.new(ENV['GOOGLE_PLACES_KEY'])
		@result = @client.spots_by_query(query_for_google, :types => ['bar', 'night_club', 'cafe', 'restaurant'], :radius => 9000)
	end

	def google_venue_place_id(primary_google_result_array)
		@place_id_array = []
		@place_id_array = primary_google_result.each { |venue| @place_id_array.push(venue.place_id)  }
		@place_id_array
	end

	def detailed_venue_info(place_id_array)
		@detailed_venue_info_array = []
		place_id_array.each { |place_id| @detailed_venue_info_array.push(@client.spot(place_id)) }
		@detailed_venue_info_array
	end
end
