class CreateJoinTableTribesVenues < ActiveRecord::Migration
	create_join_table :tribes, :venues do |t|
	  t.index :tribe_id
	  t.index :venue_id
	end
end
