class UserLanguage < ActiveRecord::Base
  attr_accessible :lookup_language_id, :user_id
  belongs_to :user
	belongs_to :lookup_language
end
