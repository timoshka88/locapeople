class LookupDay < ActiveRecord::Base
	has_many :working_hours

  # attr_accessible :title, :body
end
