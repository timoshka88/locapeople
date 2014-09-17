class CreateJoinTableLookupRatingTypesUsersVenues < ActiveRecord::Migration
	create_join_table :lookup_rating_types, :users, :venues  do |t|
	  t.index :lookup_rating_type_id
	  t.index :user_id
	  t.index :venue_id
	  t.integer :rate_amount
	end
end
