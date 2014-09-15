class CreateCitiesLookup < ActiveRecord::Migration
  def change
    create_table 	:cities_lookup do |t|
    	t.string		:name #includes the state if neccessary
    	t.string		:description 
    	t.string		:english_speakers_percentage #has to be a data which can be a float
    	t.integer		:country_id #foreign key one-to-many
    	t.integer		:last_call_time #foreign key one-to-many points to the hour table

      t.timestamps
    end
  end
end