class CreateLookupHours < ActiveRecord::Migration
  def change
    create_table :lookup_hours do |t|
    	t.string 		:name

      t.timestamps
    end
  end
end
