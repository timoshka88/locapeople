class UserTribe < ActiveRecord::Base
  # attr_accessible :id, :lookup_tribe_type_id, :user_id
  belongs_to 			:user
	belongs_to 			:lookup_tribe_type
end
