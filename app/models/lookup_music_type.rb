class LookupMusicType < ActiveRecord::Base
  has_and_belongs_to_many :venues
	# has_and_belongs_to_many :users
	has_many :user_musics
	has_many :users, 		:through => :user_musics
	# has_and_belongs_to_many :events
	has_many :event_musics
	has_many :events, 		:through => :event_musics
	# has_and_belongs_to_many	:performers
	has_many :performer_musics
	has_many :performers, 		:through => :performer_musics
  # attr_accessible :title, :body
end
