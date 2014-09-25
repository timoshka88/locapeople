class LookupRelationshipStatus < ActiveRecord::Base
  has_many :users
  # attr_accessible :title, :body
end
