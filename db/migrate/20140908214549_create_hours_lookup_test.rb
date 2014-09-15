class CreateHoursLookup < ActiveRecord::Migration
  def change
    create_table 	:hours_lookup do |t|
    	t.string		:hour_name # check for time data type multiples of half an hour
    	
      t.timestamps
    end
  end
end