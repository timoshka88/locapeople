class Event < ActiveRecord::Base
	has_and_belongs_to_many :lookup_tribe_types
	has_and_belongs_to_many :lookup_cuisine_types
	has_and_belongs_to_many :lookup_music_types
	has_and_belongs_to_many :lookup_rating_types
	belongs_to 							:venue
  # attr_accessible :title, :body
end
