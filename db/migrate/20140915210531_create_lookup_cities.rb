class CreateLookupCities < ActiveRecord::Migration
  def change
    create_table      :lookup_cities do |t|
    	t.string				:name
    	t.text   				:description 
    	t.float  				:english_speakers_percentage #has to be a data which can be a float
      t.float         :latitude
      t.float         :longitude
      t.string        :timezone
      t.string        :code
    	t.belongs_to		:lookup_country
      t.belongs_to    :lookup_region
    	t.belongs_to    :last_call_time #foreign key one-to-many points to the hour table

      t.timestamps
    end
  end
end
