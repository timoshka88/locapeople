class UserFavSpirit < ActiveRecord::Base
  attr_accessible :lookup_spirits_id, :user_id
  belongs_to :lookup_spirits
  belongs_to	:user
end
