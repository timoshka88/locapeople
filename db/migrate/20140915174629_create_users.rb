class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    t.string 		:first_name
		t.string 		:last_name
		t.string 		:email
		t.date 			:birthday #date
		t.boolean 	:ambassador #true or false then boolean
		t.string 		:photo #check what to do and what type of data
		t.string 		:phone
		t.integer 	:gender #lookup table fullfilling two columns gender and interested in, therefore lookup will have male/female/both.
		#one to many, user has one genred and gender can beong to many users
		t.integer 	:interested_in #lookup table fullfilling two columns gender and interested in, therefore lookup will have male/female/both.
		#one to many, user has one genred and gender can beong to many users
		t.integer 	:hometown_city_id #city_name_id foreign key one-to -many a user has one city but city can have many users
		t.integer 	:current_city_id #city_name_id foreign key one-to -many a user has one city but city can have many users
		# t.integer 	:language_id #language_id foreign key, many-to-many
		t.belongs_to 	:lookup_relationship_status #relationship_status_id foreign key one-to-many check from FB
		# t.integer 	:music_id #music_type id foreign key many-to-many
		# t.integer 	:cuisine_id #cuisine_type id foreign key many-to-many
		# t.integer   :tribe_id #tribe_type id foreign key many-to-many
		t.integer		:facebook_id #check how the info is saved


      t.timestamps
    end
  end
end
