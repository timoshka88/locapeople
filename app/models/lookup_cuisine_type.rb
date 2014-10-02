class LookupCuisineType < ActiveRecord::Base
	attr_accessible :id ,:name, :description

 	has_many :venue_cuisines
	has_many :venues, 			:through => :venue_cuisines

	has_many :user_cuisines
	has_many :users, 				:through => :user_cuisines

	has_many :event_cuisines
	has_many :events, 			:through => :event_cuisines

end
