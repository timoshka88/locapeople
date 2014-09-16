class LookupRatingType < ActiveRecord::Base
	has_and_belongs_to_many :venues
	has_and_belongs_to_many :users
  # attr_accessible :title, :body
end
