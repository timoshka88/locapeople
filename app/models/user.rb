class User < ActiveRecord::Base
	has_and_belongs_to_many :tribes
	has_and_belongs_to_many :languages
	has_and_belongs_to_many :cuisines
	has_and_belongs_to_many :musics
	
  # attr_accessible :title, :body
end
