class LookupMusicType < ActiveRecord::Base
  has_and_belongs_to_many :venues
	has_and_belongs_to_many :users
	# has_and_belongs_to_many :events
	has_many :event_musics
	has_many :events, 		:through => :event_musics
	has_and_belongs_to_many	:performers
  # attr_accessible :title, :body
end
