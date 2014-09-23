class Venue < ActiveRecord::Base
	# has_and_belongs_to_many :lookup_tribe_types
	has_many :venue_tribes
	has_many :lookup_tribe_types, :through => :venue_tribes
	# has_and_belongs_to_many :lookup_cuisine_types
	has_many :venue_cuisines
	has_many :cuisines, 		:through => :venue_cuisines
	# has_and_belongs_to_many :lookup_music_types
	has_many :venue_musics
	has_many :lookup_music_types, 		:through => :venue_musics
	# has_and_belongs_to_many :lookup_venue_types
	has_many :venue_classifications
	has_many :lookup_venue_types, :through => :venue_classifications
	has_and_belongs_to_many :lookup_days
	has_and_belongs_to_many :lookup_rating_types
	has_many 								:events
	has_many 								:working_hours
	belongs_to 							:lookup_parking_type
	belongs_to 							:owner, :class_name => "User"
	belongs_to 							:city

  # attr_accessible :title, :body
end
