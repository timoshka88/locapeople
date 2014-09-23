class VenueTribe < ActiveRecord::Base
  attr_accessible :lookup_tribe_type_id, :venue_id
  belongs_to :venue
	belongs_to :lookup_tribe_type
end
