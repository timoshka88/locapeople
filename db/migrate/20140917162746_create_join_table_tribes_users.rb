class CreateJoinTableTribesUsers < ActiveRecord::Migration
	create_join_table :tribes, :venues do |t|
	  t.index :tribe_id
	  t.index :user_id
	end
end
