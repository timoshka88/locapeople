class LookupSpirit < ActiveRecord::Base
  has_many :user_fav_spirits
	has_many :users, 						:through => :user_fav_spirits
	has_many :drink_spirits
	has_many :drinks, 					:through => :drink_spirits
  # attr_accessible :title, :body
end
