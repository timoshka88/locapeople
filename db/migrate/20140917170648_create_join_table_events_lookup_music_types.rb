class CreateJoinTableEventsLookupMusicTypes < ActiveRecord::Migration
	create_join_table :events, :lookup_music_types do |t|
	  t.index :event_id
	  t.index :lookup_music_type_id
end
