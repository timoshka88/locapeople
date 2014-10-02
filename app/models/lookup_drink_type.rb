class LookupDrinkType < ActiveRecord::Base
	# attr_accessible	:id, :name, :description

  has_many :user_fav_drink_types
	has_many :lookup_drink_types, 	:through => :user_fav_drink_types

  has_many :drink_categorizations
	has_many :drinks, 							:through => :drink_categorizations

end
