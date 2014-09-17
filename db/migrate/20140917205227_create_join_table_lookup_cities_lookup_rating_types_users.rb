class CreateJoinTableLookupCitiesLookupRatingTypesUsers < ActiveRecord::Migration
	create_join_table :lookup_cities, :lookup_rating_types, :users do |t|
	  t.index :lookup_city_id
	  t.index :lookup_rating_type_id
	  t.index :user_id
	  t.integer :rate_amount
	end
end
