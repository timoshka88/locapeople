class CreateJoinTableLookupLanguagesPerformers < ActiveRecord::Migration
	create_join_table :lookup_languages, :performers do |t|
	  t.index :lookup_language_id
	  t.index :performer_id
	end
end
