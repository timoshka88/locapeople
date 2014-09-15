class LookupCountry < ActiveRecord::Base
  has_many :cities
  has_and_belongs_to_many :drinks
  has_and_belongs_to_many :lookup_rating_types
  # attr_accessible :title, :body
end
