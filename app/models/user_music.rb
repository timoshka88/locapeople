class UserMusic < ActiveRecord::Base
  attr_accessible :lookup_music_type_id, :user_id
  belongs_to	:lookup_music_type
  belongs_to	:user
end