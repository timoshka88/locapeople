class CreateJoinTableLookupLanguagesUsers < ActiveRecord::Migration
	create_join_table :lookup_languages, :users do |t|
	  t.index :lookup_language_id
	  t.index :user_id
	end
end
