class CreateJoinTableEventsLookupTribeTypes < ActiveRecord::Migration
	create_join_table :events, :lookup_tribe_types do |t|
	  t.index :event_id
	  t.index :lookup_tribe_type_id
	end
end
