class PerformerLanguage < ActiveRecord::Base
  # attr_accessible :id, :lookup_language_id, :performer_id
  belongs_to 			:performer
	belongs_to 			:lookup_language
end
