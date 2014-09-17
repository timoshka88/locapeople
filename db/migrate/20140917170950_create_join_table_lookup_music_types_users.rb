class CreateJoinTableLookupMusicTypesUsers < ActiveRecord::Migration
	create_join_table :lookup_music_types, :users do |t|
	  t.index :lookup_music_type_id
	  t.index :user_id
end
