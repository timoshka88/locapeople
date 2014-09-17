class CreateJoinTableEventsLookupRatingTypesUsers < ActiveRecord::Migration
	create_join_table :events, :lookup_rating_types, :users do |t|
	  t.index :event_id
	  t.index :lookup_rating_type_id
	  t.index :user_id
	  t.integer :rate_amount
	end
end
