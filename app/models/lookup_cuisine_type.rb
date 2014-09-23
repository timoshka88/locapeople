class LookupCuisineType < ActiveRecord::Base
  # has_and_belongs_to_many :venues
 	has_many :venue_cuisines
	has_many :venues, 			:through => :venue_cuisines
	# has_and_belongs_to_many :users
	has_many :user_cuisines
	has_many :users, 				:through => :user_cuisines
	# has_and_belongs_to_many :events
	has_many :event_cuisines
	has_many :events, 			:through => :event_cuisines

  # attr_accessible :title, :body
end
