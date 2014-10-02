class Event < ActiveRecord::Base
	attr_accessible :id, :name, :description, :official_website_link, :price, :venue_id

	has_many 		:event_tribes
	has_many 		:lookup_tribe_types, 		:through => :event_tribes

	has_many 		:event_cuisines
	has_many 		:lookup_cuisine_types, 	:through => :event_cuisines

	has_many 		:event_musics
	has_many 		:lookup_music_types, 		:through => :event_musics

	has_many 		:event_ratings
	has_many 		:lookup_rating_types, 	:through => :event_ratings
	
	belongs_to 	:venue
  # attr_accessible :title, :body
end
