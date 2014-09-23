class PerformerMusic < ActiveRecord::Base
  attr_accessible :lookup_music_type_id, :performer_id
  belongs_to :lookup_music_type
  belongs_to	:performer
end
