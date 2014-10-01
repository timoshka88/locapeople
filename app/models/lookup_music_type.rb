class LookupMusicType < ActiveRecord::Base
  attr_accessible :id ,:name, :description

  has_many :venue_musics
	has_many :venues, 			:through => :venue_musics

	has_many :user_musics
	has_many :users, 				:through => :user_musics

	has_many :event_musics
	has_many :events, 			:through => :event_musics

	has_many :performer_musics
	has_many :performers, 	:through => :performer_musics
  # attr_accessible :title, :body
end
