class UserFavSpirit < ActiveRecord::Base
  # attr_accessible :id, :lookup_spirit_id, :user_id
  belongs_to 			:lookup_spirit
  belongs_to			:user
end
