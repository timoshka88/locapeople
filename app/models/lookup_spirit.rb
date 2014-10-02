class LookupSpirit < ActiveRecord::Base
	# attr_accessible :id, :name, :description

  has_many :user_fav_spirits
	has_many :users, 						:through => :user_fav_spirits
	has_many :drink_spirits
	has_many :drinks, 					:through => :drink_spirits
	
end
