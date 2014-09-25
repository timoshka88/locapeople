class CreateUsers < ActiveRecord::Migration
  def change
    create_table 	:users do |t|
    t.string 			:first_name
		t.string 			:last_name
		t.string 			:email
		t.string 			:photo #check what to do and what type of data
		t.string 			:phone
		t.date 				:birthday
		t.boolean 		:ambassador
		t.belongs_to 	:lookup_gender #lookup table fullfilling two columns gender and interested in, therefore lookup will have male/female/both.
		#one to many, user has one genred and gender can beong to many users
		t.belongs_to 	:interested_in_gender
		t.belongs_to 	:hometown_city
		t.belongs_to 	:current_city
		t.belongs_to 	:lookup_relationship_status 
		
		# t.integer			:facebook_id #check how the info is saved


      t.timestamps
    end
  end
end
