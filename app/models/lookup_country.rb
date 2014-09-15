class LookupCountry < ActiveRecord::Base
  has_many :cities
  # attr_accessible :title, :body
end
