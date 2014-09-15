class Venue < ActiveRecord::Base
	has_and_belongs_to_many :lookup_tribe_types
	has_and_belongs_to_many :venue_types
	has_and_belongs_to_many :lookup_cuisine_types
	has_and_belongs_to_many :lookup_music_types
	belongs_to :lookup_parking_type
  # attr_accessible :title, :body
end
