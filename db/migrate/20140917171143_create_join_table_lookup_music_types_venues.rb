class CreateJoinTableLookupMusicTypesVenues < ActiveRecord::Migration
	create_join_table :lookup_music_types, :venues do |t|
	  t.index :lookup_music_type_id
	  t.index :venue_id
end
