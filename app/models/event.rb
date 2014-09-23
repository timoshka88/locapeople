class Event < ActiveRecord::Base
	# has_and_belongs_to_many :lookup_tribe_types
	has_many :event_tribes
	has_many :tribes, 			:through => :event_tribes
	# has_and_belongs_to_many :lookup_cuisine_types
	has_many :event_cuisines
	has_many :cuisines, 		:through => :event_cuisines
	has_and_belongs_to_many :lookup_music_types
	has_and_belongs_to_many :lookup_rating_types
	belongs_to 							:venue
  # attr_accessible :title, :body
end
