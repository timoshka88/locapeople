class CreateJoinTableLookupDrinkTypesUsers < ActiveRecord::Migration
	create_join_table :lookup_drink_types, :users do |t|
	  t.index :lookup_drink_type_id
	  t.index :user_id
end
