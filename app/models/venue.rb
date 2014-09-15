class Venue < ActiveRecord::Base
	has_and_belongs_to_many :tribes
	has_and_belongs_to_many :venue_types
	has_and_belongs_to_many :cuisines
	has_and_belongs_to_many :musics
	
  # attr_accessible :title, :body
end
