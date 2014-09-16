class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|

    t.string 		:name
		t.string 		:address
		t.string 		:email
		t.string 		:website
		t.integer 	:minimum_age #the smallest integer
		t.string 		:description
		t.string 		:whats_cool
		t.string 		:tips_and_tricks
		t.boolean 	:outdoor_seating #true or false
		t.integer		:gay_friendly_id #yes / no/ gay only
		t.boolean 	:entrance_fee #true or false #think about the possibility of having special promos as free for girls until, etc
		t.boolean 	:wheelchair_access #true or false
		t.string 		:phone
		t.string 		:alt_phone
		t.belongs_to 	:user #owner #one user can own many venues, one venue belongs to one user t.belongs to user
		t.belongs_to	:lookup_parking_type #foreign_key paid/free/vallet/NA
		t.belongs_to 	:city #city_id a foreign key one city has many venuse, one venue belongs to one city, t.belongs to city
		# t.integer 	:music_id # has_and_belongs_to music_type id foreign key, many-to-many
		# t.integer 	:cuisine_id # has_and_belongs_to cuisine_type id foreign key, many-to-many
		# t.integer 	:venue_type_id # has_and_belongs_to venue type id foreign key , many-to-many
		# t.integer   :tribe_id #has_and_belongs_to lookup for subcltures many-to-many
		# t.integer   :google_uid #or place_id which is now instead of reference key and unique key
		# t.integer		:x_coord # geocoding google ID
		# t.integer		:y_coord

      t.timestamps
    end
  end
end
