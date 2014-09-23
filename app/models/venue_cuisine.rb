class VenueCuisine < ActiveRecord::Base
  attr_accessible :lookup_cuisine_type_id, :venue_id
  belongs_to :venue
	belongs_to :lookup_cuisine_type
end
