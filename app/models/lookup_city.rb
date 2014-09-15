class LookupCity < ActiveRecord::Base
	belongs_to :country
	has_and_belongs_to_many :lookup_rating_types
  # attr_accessible :title, :body
end
