class LookupCity < ActiveRecord::Base
	belongs_to 							:lookup_country
	has_many 								:venues
	# has_many 								:users
	has_many :hometown_city_users, :foreign_key => "hometown_city_id", :class_name => "User"
  has_many :current_city_users, :foreign_key => "current_city_id", :class_name => "User"
	has_many :hometown_city_performers, :foreign_key => "hometown_city_id", :class_name => "Performer"
	has_and_belongs_to_many :lookup_rating_types
  belongs_to    					:last_call_time, :class_name => "LookupHour"

  # attr_accessible :title, :body
end
