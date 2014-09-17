class CreateJoinTableEventsLookupCuisineTypes < ActiveRecord::Migration
	create_join_table :events, :lookup_cuisine_types do |t|
	  t.index :event_id
	  t.index :lookup_cuisine_type_id
	end
end
