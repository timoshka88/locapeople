class UserFavDrink < ActiveRecord::Base
  attr_accessible :id, :drink_id, :user_id
  belongs_to 			:drink
  belongs_to			:user
end
