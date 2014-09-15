class Performer < ActiveRecord::Base
	has_and_belongs_to_many :lookup_tribe_types
	has_and_belongs_to_many :lookup_music_types
	has_and_belongs_to_many :lookup_languages
  	has_and_belongs_to_many :lookup_rating_types
  # attr_accessible :title, :body
end
