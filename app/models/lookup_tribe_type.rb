class LookupTribeType < ActiveRecord::Base
  has_many :venue_tribes
	has_many :venues, 		:through => :venue_tribes

	has_many :user_tribes
	has_many :users, 			:through => :user_tribes

	has_many :event_tribes
	has_many :events, 		:through => :event_tribes
 
	has_many :performer_tribes
	has_many :performers, :through => :performer_tribes
  # attr_accessible :title, :body
end
