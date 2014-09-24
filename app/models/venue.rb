class Venue < ActiveRecord::Base
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

  # attr_accessible :title, :body
end
