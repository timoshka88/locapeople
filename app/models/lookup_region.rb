class LookupRegion < ActiveRecord::Base
	has_many 		:lookup_cities
	belongs_to 	:lookup_country

  # attr_accessible :title, :body
end
