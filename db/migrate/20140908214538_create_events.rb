class CreateEvents < ActiveRecord::Migration
  def change
    create_table 	:events do |t|
    	t.string		:name
    	t.string		:description
    	t.string		:price #integer or string
    	t.string		:official_website_link
			t.integer 	:city #city_name_id foreign key
			t.integer 	:music #music_type id foreign key
			t.integer 	:cuisine #cuisine_type id foreign key
			#t.integer  :tribe #tribe_type id foreign key
			#t.integer 	:language #language_id foreign key would an event have a language?


      t.timestamps
    end
  end
end
