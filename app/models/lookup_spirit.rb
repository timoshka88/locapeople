class LookupSpirit < ActiveRecord::Base
  # has_and_belongs_to_many :users
  has_many :user_fav_spirits
	has_many :users, 		:through => :user_fav_spirits
  has_and_belongs_to_many :drinks
  # attr_accessible :title, :body
end
