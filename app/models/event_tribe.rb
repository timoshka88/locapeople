class EventTribe < ActiveRecord::Base
  # attr_accessible :id, :event_id, :lookup_tribe_type_id
  belongs_to 			:event
	belongs_to 			:lookup_tribe_type
end
