class LookupCity < ActiveRecord::Base
	belongs_to :country
  # attr_accessible :title, :body
end
