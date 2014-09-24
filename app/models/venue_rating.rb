class VenueRating < ActiveRecord::Base
  attr_accessible :lookup_rating_type_id, :user_id, :venue_id
  belongs_to :venue
  belongs_to	:lookup_rating_type
  belongs_to	:user
end
