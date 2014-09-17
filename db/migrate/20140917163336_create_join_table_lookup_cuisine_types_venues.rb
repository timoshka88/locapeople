class CreateJoinTableLookupCuisineTypesVenues < ActiveRecord::Migration
	create_join_table :lookup_cuisine_types, :venues do |t|
	  t.index :lookup_cuisine_type_id
	  t.index :venue_id
	end
end
