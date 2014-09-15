class User < ActiveRecord::Base
	has_and_belongs_to_many :lookup_tribe_types
	has_and_belongs_to_many :lookup_languages
	has_and_belongs_to_many :lookup_cuisine_types
	has_and_belongs_to_many :lookup_music_types
	has_and_belongs_to_many :lookup_spirits
	has_and_belongs_to_many :lookup_drink_types
	has_and_belongs_to_many :drinks
	belongs_to 							:lookup_relationship_status
  # attr_accessible :title, :body
end
