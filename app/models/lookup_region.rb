class LookupRegion < ActiveRecord::Base
  
  attr_accessible :id, :region_name, :code, :adm1_code, :description
	
	has_many 		:lookup_cities
	belongs_to 	:lookup_country

end
