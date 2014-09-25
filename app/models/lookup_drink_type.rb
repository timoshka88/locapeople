class LookupDrinkType < ActiveRecord::Base
  has_many :user_fav_drink_types
	has_many :lookup_drink_types, 	:through => :user_fav_drink_types

  has_many :drink_categorizations
	has_many :drinks, 							:through => :drink_categorizations

  # attr_accessible :title, :body
end
