class LookupVenueType < ActiveRecord::Base
	# attr_accessible :id, :name, :description
	
  has_many :venue_classifications
	has_many :venues, :through => :venue_classifications

end
