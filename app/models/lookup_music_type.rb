class LookupMusicType < ActiveRecord::Base
  has_and_belongs_to_many :venues
	has_and_belongs_to_many :users
	has_and_belongs_to_many :events
	has_and_belongs_to_many	:performers
  # attr_accessible :title, :body
end
