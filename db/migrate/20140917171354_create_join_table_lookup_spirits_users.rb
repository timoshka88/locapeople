class CreateJoinTableLookupSpiritsUsers < ActiveRecord::Migration
	create_join_table :lookup_spirits, :users do |t|
	  t.index :lookup_spirit_id
	  t.index :user_id
end
