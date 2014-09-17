class CreateJoinTableLookupTribeTypesPerformers < ActiveRecord::Migration
	create_join_table :lookup_tribe_types, :performers do |t|
	  t.index :lookup_tribe_type_id
	  t.index :performer_id
	end
end
