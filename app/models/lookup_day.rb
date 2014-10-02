class LookupDay < ActiveRecord::Base
	attr_accessible	:id, :name
	
	has_many :working_hours

end
