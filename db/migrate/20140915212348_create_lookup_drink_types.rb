class CreateLookupDrinkTypes < ActiveRecord::Migration
  def change
    create_table  :lookup_drink_types do |t|
    	t.string 		:name
    	t.string		:description
    	
      t.timestamps
    end
  end
end
