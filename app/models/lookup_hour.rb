class LookupHour < ActiveRecord::Base
	has_and_belongs_to_many :venues
  # attr_accessible :title, :body
end
