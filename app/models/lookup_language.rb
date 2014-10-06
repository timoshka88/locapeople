class LookupLanguage < ActiveRecord::Base
	# attr_accessible	:id, :name, :description

  has_many :performer_languages
	has_many :performers, 				:through => :performer_languages

	has_many :user_languages
	has_many :users,							:through => :user_languages

	has_many :country_languages
	has_many :lookup_countries,		:through => :country_languages

end
