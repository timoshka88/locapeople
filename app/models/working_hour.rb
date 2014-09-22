class WorkingHour < ActiveRecord::Base
	belongs_to 	:opening_hours, :class_name => "LookupHour"
	belongs_to 	:closing_hours, :class_name => "LookupHour"
	belongs_to	:venue
	belongs_to	:day
  # attr_accessible :title, :body
end
