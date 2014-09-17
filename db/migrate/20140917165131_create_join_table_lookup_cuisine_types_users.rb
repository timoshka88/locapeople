class CreateJoinTableLookupCuisineTypesUsers < ActiveRecord::Migration
	create_join_table :lookup_cuisine_types, :users do |t|
	  t.index :lookup_cuisine_type_id
	  t.index :user_id
	end
end
