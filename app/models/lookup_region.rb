class LookupRegion < ActiveRecord::Base
  # attr_accessible :id, :name, :code, :adm1_code, :description, :lookup_country_id
	
	has_many 		:lookup_cities
	belongs_to 	:lookup_country

end
