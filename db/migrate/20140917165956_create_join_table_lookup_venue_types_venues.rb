class CreateJoinTableLookupVenueTypesVenues < ActiveRecord::Migration
	create_join_table :lookup_venue_types, :venues do |t|
	  t.index :lookup_venue_type_id
	  t.index :venue_id
	end
end
