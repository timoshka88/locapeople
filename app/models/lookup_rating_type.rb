class LookupRatingType < ActiveRecord::Base
	has_many :venue_ratings
	has_many :venues, 					:through => :venue_ratings
	has_many :users, 						:through => :venue_ratings

	has_many :event_ratings
	has_many :events, 					:through => :event_ratings
	has_many :users, 						:through => :event_ratings

	has_many :performer_ratings
	has_many :performers, 			:through => :performer_ratings
	has_many :users, 						:through => :performer_ratings

	has_many :country_ratings
	has_many :lookup_countries, :through => :country_ratings
	has_many :users, 						:through => :country_ratings

	has_many :city_ratings
	has_many :lookup_cities, 		:through => :city_ratings
	has_many :users, 						:through => :city_ratings

  # attr_accessible :title, :body
end
