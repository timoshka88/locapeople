class LookupParkingType < ActiveRecord::Base
	attr_accessible :name, :description

  has_many :venues

end
