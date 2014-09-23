class LookupLanguage < ActiveRecord::Base
  # has_and_belongs_to_many :performers
  has_many :performer_languages
	has_many :performers, :through => :performer_languages
	# has_and_belongs_to_many :users
	has_many :user_languages
	has_many :users, :through => :user_languages

  # attr_accessible :title, :body
end
