class LookupCountry < ActiveRecord::Base
  has_many :cities
  has_and_belongs_to_many :drinks
  # attr_accessible :title, :body
end
