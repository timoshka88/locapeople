class VenueClassification < ActiveRecord::Base
  attr_accessible :lookup_venue_type_id, :venue_id
  belongs_to :lookup_venue_type
  belongs_to	:venue
end
