class LookupCountry < ActiveRecord::Base
  attr_accessible :id, :country_name, :fips104, :iso2, :iso3, :ison, :internet, :capital, :map_reference, :nationality, :currency, :currency_code, :population, :description, :english_speakers_percentage, :last_call_time

  has_many 		:lookup_cities
  has_many		:lookup_regions

  has_many 		:drink_origins
	has_many 		:drinks, 							:through => :drink_origins
 
  has_many 		:country_ratings
	has_many 		:lookup_rating_types, :through => :country_ratings
  belongs_to  :last_call_time, 			:class_name => "LookupHour"


	def self.import(file)
	  CSV.foreach(file, headers: true) do |country|
	    self.create!(country.to_hash.symbolize_keys, :without_protection => true)
	  end
	end
end
