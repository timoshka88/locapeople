class Drink < ActiveRecord::Base
	attr_accessible	:id, :name, :description, :ingredients

  has_many :drink_origins
	has_many :lookup_countries, 		   :through => :drink_origins
  
  has_many :drink_categorizations
	has_many :lookup_drink_types, 		 :through => :drink_categorizations
  
  has_many :drink_spirits
	has_many :lookup_spirits, 		     :through => :drink_spirits

  has_many :user_fav_drinks
	has_many :users, 		               :through => :user_fav_drinks

end
