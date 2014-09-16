class LookupRatingType < ActiveRecord::Base
	has_and_belongs_to_many :venues
	has_and_belongs_to_many :users
	has_and_belongs_to_many	:events
	has_and_belongs_to_many	:performers
	has_and_belongs_to_many	:countries
	has_and_belongs_to_many :cities
  # attr_accessible :title, :body
end
