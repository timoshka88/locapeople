class CreateLookupCountries < ActiveRecord::Migration
  def change
    create_table 	  :lookup_countries do |t|
    	t.string	  :name
    	t.string	  :fips104
    	t.string	  :iso2
    	t.string	  :iso3
    	t.integer	  :ison
    	t.string	  :internet
    	t.string	  :capital
    	t.string	  :map_reference
    	t.string	  :nationality
    	t.string	  :currency
    	t.string	  :currency_code
    	t.integer	  :population
    	t.text		  :description
    	t.float	      :english_speakers_percentage #data type that accepts floats
    	t.belongs_to  :last_call_time #foreign key points to lhour and is a one-to-many

        t.timestamps
    end
  end
end
