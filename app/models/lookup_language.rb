class LookupLanguage < ActiveRecord::Base
  has_and_belongs_to_many :performers
	has_and_belongs_to_many :users

  # attr_accessible :title, :body
end
