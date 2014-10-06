class LookupGender < ActiveRecord::Base
	# attr_accessible :id, :name, :description

  has_many :users
  has_many :interested_in_gender_users, :foreign_key => "interested_in_gender_id", :class_name => "User"

end
