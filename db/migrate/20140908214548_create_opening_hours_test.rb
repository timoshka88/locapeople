class CreateOpeningHours < ActiveRecord::Migration #an intermidiate table between the venue and the hour and the day
  def change
    create_table 	:opening_hours do |t|
    	t.integer		:venue_id #foreign key
    	t.string		:day_id #foreign_key
    	t.string		:opening_hour_id #foreign key
    	t.integer		:closing_hour_id #foreign key

      t.timestamps
    end
  end
end