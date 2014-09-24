class Drink < ActiveRecord::Base
  # has_and_belongs_to_many :countries
  has_many :drink_origins
	has_many :countries, 		:through => :drink_origins
  # has_and_belongs_to_many :lookup_drink_types
  has_many :drink_categorizations
	has_many :lookup_drink_types, 		:through => :drink_categorizations
  has_and_belongs_to_many :lookup_spirits
  # has_and_belongs_to_many :users
  has_many :user_fav_drinks
	has_many :users, 		:through => :user_fav_drinks
  # attr_accessible :title, :body
end
