class PerformerTribe < ActiveRecord::Base
  # attr_accessible :id, :lookup_tribe_type_id, :performer_id
  belongs_to 			:performer
	belongs_to 			:lookup_tribe_type
end
