class UserFavDrinkType < ActiveRecord::Base
  # attr_accessible :id, :lookup_drink_type_id, :user_id
  belongs_to 			:lookup_drink_type
  belongs_to			:user
end
