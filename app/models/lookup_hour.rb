class LookupHour < ActiveRecord::Base
	attr_accessible	:id, :name

	has_many :opening_working_hours, 		:foreign_key => "opening_hour_id", 		:class_name => "WorkignHour"
	has_many :closing_working_hours, 		:foreign_key => "closing_hour_id", 		:class_name => "WorkignHour"
	has_many :last_call_time_countries, :foreign_key => "last_call_time_id", 	:class_name => "Country"
	has_many :last_call_time_cities,    :foreign_key => "last_call_time_id", 	:class_name => "City"

  # attr_accessible :title, :body
end
