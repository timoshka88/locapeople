class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    t.string 		:first_name
		t.string 		:last_name
		t.string 		:email
		t.string 		:birthday
		t.string 		:gender
		t.string 		:ambassador #true or false then boolean
		t.string 		:photo #check what to do and what type of data
		t.string 		:interested_in #true or false
		t.string 		:phone #integer or string
		t.integer 	:hometown_city #city_name_id foreign key
		t.integer 	:current_city #city_name_id foreign key
		t.integer 	:language #language_id foreign key
		t.integer 	:relationship_status #relationship_status_id foreign key
		t.integer 	:music #music_type id foreign key
		t.integer 	:cuisine #cuisine_type id foreign key
		# t.integer   :tribe #tribe_type id foreign key

      t.timestamps
    end
  end
end
