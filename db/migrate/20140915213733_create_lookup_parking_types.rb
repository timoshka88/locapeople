class CreateLookupParkingTypes < ActiveRecord::Migration
  def change
    create_table  :lookup_parking_types do |t|
    	t.string 		:name
    	t.text			:description

      t.timestamps
    end
  end
end
