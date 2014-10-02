class VenueMusic < ActiveRecord::Base
  attr_accessible :id, :lookup_music_type_id, :venue_id
  belongs_to			:lookup_music_type
  belongs_to			:venue
end
