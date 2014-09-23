class EventMusic < ActiveRecord::Base
  attr_accessible :event_id, :lookup_music_type_id
  belongs_to	 :event
  belongs_to	:lookup_music_type
end
