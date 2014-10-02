class LookupRelationshipStatus < ActiveRecord::Base
	# attr_accessible :id, :name, :description
  
  has_many :users

end
