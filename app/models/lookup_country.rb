class LookupCountry < ActiveRecord::Base
  has_many 		:lookup_cities

  has_many 		:drink_origins
	has_many 		:drinks, 							:through => :drink_origins
 
  has_many 		:country_ratings
	has_many 		:lookup_rating_types, :through => :country_ratings
  belongs_to  :last_call_time, 			:class_name => "LookupHour"

  # attr_accessible :title, :body
end
