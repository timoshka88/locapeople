class CreateDaysLookup < ActiveRecord::Migration
  def change
    create_table 	:days_lookup do |t|
    	t.string		:day_name
    	
      t.timestamps
    end
  end
end