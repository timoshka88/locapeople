class PerformerRating < ActiveRecord::Base
  attr_accessible :id, :lookup_rating_type_id, :performer_id, :user_id
  belongs_to 			:performer
  belongs_to			:lookup_rating_type
  belongs_to			:user
end
