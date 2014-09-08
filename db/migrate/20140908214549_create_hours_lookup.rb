class CreateHoursLookup < ActiveRecord::Migration
  def change
    create_table 	:hours_lookup do |t|
    	t.string		:hour_name
    	
      t.timestamps
    end
  end
end