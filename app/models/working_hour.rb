class WorkingHour < ActiveRecord::Base
	attr_accessible :id, :venue_id, :opening_hour_id, :closing_hour_id, :working_day_id

	belongs_to 	:opening_hours, :class_name => "LookupHour"
	belongs_to 	:closing_hours, :class_name => "LookupHour"
	belongs_to	:venue
	belongs_to	:lookup_day

end
