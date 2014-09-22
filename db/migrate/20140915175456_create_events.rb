class CreateEvents < ActiveRecord::Migration
  def change
    create_table    :events do |t|
    	
    	t.string		  :name
    	t.text		    :description
      t.string      :official_website_link
    	t.float    		:price #integer or string check if there is a currency data type
      t.belongs_to  :venue #foreign_key one-to-many, one event on a certain venue and one venue can have many events
			# t.integer 	:music_id #music_type id foreign key many-to-many
			# t.integer 	:cuisine_id #cuisine_type id foreign key many-to-many
			# t.integer   :tribe_id #tribe_type id foreign key

      t.timestamps
    end
  end
end
