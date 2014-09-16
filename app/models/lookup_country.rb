class LookupCountry < ActiveRecord::Base
  has_many 								:lookup_cities
  has_and_belongs_to_many :drinks
  has_and_belongs_to_many :lookup_rating_types  
  belongs_to    					:last_call_time, :class_name => "LookupHour"

  # attr_accessible :title, :body
end
