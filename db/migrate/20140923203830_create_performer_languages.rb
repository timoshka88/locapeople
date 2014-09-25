class CreatePerformerLanguages < ActiveRecord::Migration
  def change
    create_table 	:performer_languages do |t|
      t.integer 	:lookup_language_id
      t.integer 	:performer_id

      t.timestamps
    end
  end
end
