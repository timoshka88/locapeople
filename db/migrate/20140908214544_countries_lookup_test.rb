class CreateCountriesLookup < ActiveRecord::Migration
  def change
    create_table 	:countries_lookup do |t|
    	t.string		:name
    	t.string		:description
    	t.string		:english_speakers_percentage #data type that accepts floats
    	t.integer		:last_call_time #foreign key points to lhour and is a one-to-many

      t.timestamps
    end
  end
end