class CreateJoinTableLookupTribeTypesVenues < ActiveRecord::Migration
	create_join_table :lookup_tribe_types, :venues do |t|
	  t.index :lookup_tribe_type_id
	  t.index :venue_id
	end
end
