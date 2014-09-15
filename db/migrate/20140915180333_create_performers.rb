class CreatePerformers < ActiveRecord::Migration
  def change
    create_table :performers do |t|
    	
    	t.string		:name
    	t.string		:description
      t.integer   :user_id #one-to-many
    	# t.integer 	:language_id #language_id foreign key many-to-many
			# t.integer 	:music_id #music_type id foreign key many-to-many
			t.integer		:hometown_city_id #city_name_id foreign key one-to-many
			# t.integer   :tribe_id #tribe_type id foreign key many-to-many


      t.timestamps
    end
  end
end
