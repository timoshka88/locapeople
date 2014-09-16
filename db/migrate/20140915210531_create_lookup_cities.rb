class CreateLookupCities < ActiveRecord::Migration
  def change
    create_table :lookup_cities do |t|
    	t.string				:name_state #includes the state if neccessary
    	t.string				:description 
    	t.string				:english_speakers_percentage #has to be a data which can be a float
    	t.belongs_to		:lookup_country #foreign key one-to-many
    	t.integer				:last_call_time #foreign key one-to-many points to the hour table

      t.timestamps
    end
  end
end
