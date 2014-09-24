class UserCuisine < ActiveRecord::Base
  attr_accessible :lookup_cuisine_type_id, :user_id
  belongs_to 			:user
	belongs_to 			:lookup_cuisine_type
end
