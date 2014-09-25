class DrinkOrigin < ActiveRecord::Base
  attr_accessible :drink_id, :lookup_country_id
  belongs_to			:drink
  belongs_to			:lookup_country
end
