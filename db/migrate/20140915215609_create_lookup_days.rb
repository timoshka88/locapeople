class CreateLookupDays < ActiveRecord::Migration
  def change
    create_table 	:lookup_days do |t|
    	t.string 		:name
      t.timestamps
    end
  end
end
