class CreateJoinTablePerformersTribes < ActiveRecord::Migration
	create_join_table :performers, :tribes do |t|
	  t.index :performer_id
	  t.index :tribe_id
	end
end
