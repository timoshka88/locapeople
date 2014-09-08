class CreatePerformers < ActiveRecord::Migration
  def change
    create_table 	:performers do |t|
    	t.string		:name
    	t.string		:description
    	t.integer 	:language #language_id foreign key
			t.integer 	:music #music_type id foreign key
			t.integer		:hometown_city #city_name_id foreign key
			# t.integer   :tribe #tribe_type id foreign key

      t.timestamps
    end
  end
end
