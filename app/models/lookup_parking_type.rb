class LookupParkingType < ActiveRecord::Base
  has_many :venues
  # attr_accessible :title, :body
end
