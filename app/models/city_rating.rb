class CityRating < ActiveRecord::Base
  attr_accessible 	:lookup_city_id, :lookup_rating_type_id, :user_id
  belongs_to 				:lookup_city
  belongs_to				:lookup_rating_type
  belongs_to				:user
end
