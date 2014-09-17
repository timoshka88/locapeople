class CreateJoinTableEventsTribes < ActiveRecord::Migration
	create_join_table :events, :tribes do |t|
	  t.index :event_id
	  t.index :tribe_id
	end
end
