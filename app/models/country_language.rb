class CountryLanguage < ActiveRecord::Base
  # attr_accessible :id, :lookup_country_id, :lookup_language_id
  belongs_to 	:lookup_country
	belongs_to	:lookup_language
end
