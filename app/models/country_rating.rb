class CountryRating < ActiveRecord::Base
  attr_accessible :lookup_country_id, :lookup_rating_type_id, :user_id
  belongs_to :lookup_country
  belongs_to	:lookup_rating_type
  belongs_to	:user
end
