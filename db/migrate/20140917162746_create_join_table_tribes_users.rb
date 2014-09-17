class CreateJoinTableLookupTribeTypesUsers < ActiveRecord::Migration
	create_join_table :lookup_tribe_types, :users do |t|
	  t.index :lookup_tribe_type_id
	  t.index :user_id
	end
end
