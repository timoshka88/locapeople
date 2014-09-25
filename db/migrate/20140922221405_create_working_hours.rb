class CreateWorkingHours < ActiveRecord::Migration
  def change
    create_table 		:working_hours do |t|
    	t.belongs_to	:venue
    	t.belongs_to	:opening_hour
    	t.belongs_to	:closing_hour
    	t.belongs_to	:working_day

      t.timestamps
    end
  end
end
