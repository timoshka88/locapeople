class CreateJoinTableLookupRatingTypesPerformersUsers < ActiveRecord::Migration
	create_join_table :lookup_rating_types, :performers, :users do |t|
	  t.index :lookup_rating_type_id
	  t.index :performer_id
	  t.index :user_id
	  t.integer :rate_amount
	end
end
