class EventCuisine < ActiveRecord::Base
  attr_accessible :event_id, :lookup_cuisine_type_id
  belongs_to 			:event
	belongs_to 			:lookup_cuisine_type
end
