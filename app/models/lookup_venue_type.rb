class LookupVenueType < ActiveRecord::Base
  has_many :venue_classifications
	has_many :venues, :through => :venue_classifications
  # attr_accessible :title, :body
end
