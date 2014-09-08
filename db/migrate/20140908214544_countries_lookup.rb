class CreateCountriesLookup < ActiveRecord::Migration
  def change
    create_table 	:countries_lookup do |t|
    	t.string		:name
    	t.string		:description
    	t.string		:english_speakers_percentage
    	t.integer		:last_call_time #foreign key

      t.timestamps
    end
  end
end