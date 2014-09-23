class LookupTribeType < ActiveRecord::Base
  # has_and_belongs_to_many :venues
  has_many :venue_tribes
	has_many :venues, :through => :venue_tribes
	# has_and_belongs_to_many :users
	has_many :user_tribes
	has_many :users, :through => :user_tribes
	has_and_belongs_to_many :events
	has_and_belongs_to_many	:performers  
  # attr_accessible :title, :body
end
