class EventRating < ActiveRecord::Base
  attr_accessible :event_id, :lookup_rating_type_id, :user_id
  belongs_to 			:event
  belongs_to			:lookup_rating_type
  belongs_to			:user
end
