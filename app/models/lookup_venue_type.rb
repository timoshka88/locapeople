class LookupVenueType < ActiveRecord::Base
  	# has_and_belongs_to_many :venues
  has_many :venue_classifications
	has_many :venues, :through => :venue_classifications
  # attr_accessible :title, :body
end
