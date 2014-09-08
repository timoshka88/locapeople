class CreateVenues < ActiveRecord::Migration #might need to rename it to locations for the google api to work
  def change
	create_table 	:venues do |t|
		t.string 		:name
		t.string 		:address
		t.string 		:email
		t.string 		:website
		t.string 		:minimum_age
		t.string 		:description
		t.string 		:whats_cool
		t.string 		:tips_and_tricks
		t.string 		:parking #true or false
		t.string 		:outdoor_seating #true or false
		t.string 		:entrance_fee #an integer or a string
		t.string 		:wheelchair_access #true or false
		t.string 		:phone #integer or string
		t.string 		:alt_phone #integer or string
		# t.integer :owner_id #user_id ?
		t.integer 	:city #city_id a foreign key
		t.integer 	:music #music_type id foreign key
		t.integer 	:cuisine #cuisine_type id foreign key
		t.integer 	:venue_type #venue type id foreign key
		# t.integer   :tribe
		# t.integer   :google_uid
		# t.integer		:x_coord
		# t.integer		:y_coord



	  t.timestamps
	end
  end
end
