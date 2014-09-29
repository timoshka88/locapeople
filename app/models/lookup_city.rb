class LookupCity < ActiveRecord::Base
	attr_accessible	:city_name, :description , :english_speakers_percentage, :latitude, :longitude, :timezone, :code
	
	belongs_to 			:lookup_country
	belongs_to			:lookup_region
	belongs_to    	:last_call_time, 						:class_name => "LookupHour"

	has_many 				:venues

	has_many 				:hometown_city_users, 			:foreign_key => "hometown_city_id", :class_name => "User"
  has_many 				:current_city_users, 				:foreign_key => "current_city_id", 	:class_name => "User"
	has_many 				:hometown_city_performers, 	:foreign_key => "hometown_city_id", :class_name => "Performer"

	has_many 				:city_ratings
	has_many 				:lookup_rating_types, 			:through => :city_ratings
	has_many 				:users, 										:through => :city_ratings

end
