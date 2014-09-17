class CreateJoinTableLookupMusicTypesPerformers < ActiveRecord::Migration
	create_join_table :lookup_music_types, :performers do |t|
	  t.index :lookup_music_type_id
	  t.index :performer_id
end
