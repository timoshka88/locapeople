class EventMusic < ActiveRecord::Base
  # attr_accessible :id, :event_id, :lookup_music_type_id
  belongs_to	 		:event
  belongs_to			:lookup_music_type
end
