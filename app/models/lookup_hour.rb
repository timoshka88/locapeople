class LookupHour < ActiveRecord::Base
	has_and_belongs_to_many :venues
	has_many    						:last_call_time_countries, :foreign_key => "last_call_time_id", :class_name => "Country"

  # attr_accessible :title, :body
end
