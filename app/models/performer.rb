class Performer < ActiveRecord::Base
	has_and_belongs_to_many :tribes
	has_and_belongs_to_many :musics
	has_and_belongs_to_many :languages
  # attr_accessible :title, :body
end
