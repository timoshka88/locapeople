class CreateLookupLanguages < ActiveRecord::Migration
  def change
    create_table 	:lookup_languages do |t|
    	t.string		:name
    	t.string		:description

      t.timestamps
    end
  end
end
