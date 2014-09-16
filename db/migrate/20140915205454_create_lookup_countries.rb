class CreateLookupCountries < ActiveRecord::Migration
  def change
    create_table 			:lookup_countries do |t|
    	t.string				:name
    	t.string				:description
    	t.string				:english_speakers_percentage #data type that accepts floats
    	t.belongs_to		:last_call_time #foreign key points to lhour and is a one-to-many

      t.timestamps
    end
  end
end
