class CountryLanguage < ActiveRecord::Base
  attr_accessible :id, :lookup_country_id, :lookup_language_id
end
