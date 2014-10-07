class CreateVenues < ActiveRecord::Migration
  def change
    create_table  :venues do |t|

    t.string 			:name
		t.string 			:address
		t.string 			:email
		t.string 			:website
		t.string 			:phone
		t.string 			:alt_phone
		t.integer 		:minimum_age
		t.text 				:description
		t.text	 			:whats_cool
		t.text 				:tips_and_tricks
		t.boolean 		:outdoor_seating
		t.boolean 		:entrance_fee #think about the possibility of having special promos as free for girls until, etc
		t.boolean 		:wheelchair_access
		t.boolean			:gay_friendly
		t.belongs_to 	:owner #owner #one user can own many venues, one venue belongs to one user t.belongs to user
		t.belongs_to	:lookup_parking_type #foreign_key paid/free/vallet/NA
		t.belongs_to 	:lookup_city
		t.decimal			:lat,									:precision => 16, :scale => 13
		t.decimal			:lng,									:precision => 16, :scale => 13
		t.string			:place_id #google place id

    t.timestamps

    end

  end

end
