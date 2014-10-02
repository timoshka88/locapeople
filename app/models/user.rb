class User < ActiveRecord::Base
	# attr_accessible :id, :first_name, :last_name, :email, :photo, :phone, :birthday, :ambassador, :lookup_gender_id, :interested_in_gender_id, :hometown_city_id, :current_city_id, :lookup_relationship_status_id

	has_many 		:user_tribes
	has_many 		:lookup_tribe_types, 		:through => :user_tribes

	has_many 		:user_languages
	has_many 		:lookup_languages, 			:through => :user_languages

	has_many 		:user_cuisines
	has_many 		:lookup_cuisine_types, 	:through => :user_cuisines

	has_many 		:user_musics
	has_many 		:lookup_music_types, 		:through => :user_musics

	has_many 		:user_fav_spirits
	has_many 		:lookup_spirits, 				:through => :user_fav_spirits

	has_many 		:user_fav_drink_types
	has_many 		:lookup_drink_types, 		:through => :user_fav_drink_types

	has_many 		:user_fav_drinks
	has_many 		:drinks, 								:through => :user_fav_drinks

	has_many 		:country_ratings
	has_many 		:lookup_rating_types,		:through => :country_ratings

	has_many 		:city_ratings
	has_many 		:lookup_rating_types, 		:through => :city_ratings

	has_many 		:event_ratings
	has_many 		:lookup_rating_types, 		:through => :event_ratings

	has_many 		:performer_ratings
	has_many 		:lookup_rating_types, 		:through => :performer_ratings

	has_many 		:venue_ratings
	has_many 		:lookup_rating_types, 		:through => :venue_ratings


	has_many   	:owned_venues, 						:foreign_key => "owner_id", 	:class_name => "Venue"
	has_many 		:performers
	belongs_to 	:lookup_relationship_status
  belongs_to 	:lookup_gender
  belongs_to  :interested_in_gender, 		:class_name => "LookupGender"
  belongs_to  :hometown_city, 					:class_name => "LookupCity"
  belongs_to  :current_city, 						:class_name => "LookupCity"

end
