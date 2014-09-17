class CreateJoinTableDrinksUsers < ActiveRecord::Migration
	create_join_table :drinks, :users do |t|
	  t.index :drink_id
	  t.index :user_id
end
