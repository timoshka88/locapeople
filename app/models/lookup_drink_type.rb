class LookupDrinkType < ActiveRecord::Base
  # has_and_belongs_to_many :users
  has_many :user_fav_drink_types
	has_many :lookup_drink_types, 		:through => :user_fav_drink_types
  has_and_belongs_to_many :drinks
  # attr_accessible :title, :body
end
