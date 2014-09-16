class User < ActiveRecord::Base
	has_and_belongs_to_many :lookup_tribe_types
	has_and_belongs_to_many :lookup_languages
	has_and_belongs_to_many :lookup_cuisine_types
	has_and_belongs_to_many :lookup_music_types
	has_and_belongs_to_many :lookup_spirits
	has_and_belongs_to_many :lookup_drink_types
	has_and_belongs_to_many :drinks
	has_many    						:owned_venues, :foreign_key => "owner_id", :class_name => "Venue"
	belongs_to 							:lookup_relationship_status
  belongs_to 							:lookup_gender
  belongs_to    					:interested_in_gender, :class_name => "LookupGender"
  belongs_to    					:hometown_city, :class_name => "LookupCity"
  belongs_to    					:current_city, :class_name => "LookupCity"

  # attr_accessible :title, :body
end
