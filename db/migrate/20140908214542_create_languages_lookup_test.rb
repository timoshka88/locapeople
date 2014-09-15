class CreateLanguagesLookup < ActiveRecord::Migration
  def change
    create_table 	:languages_lookup do |t|
    	t.string		:name
    	t.string		:description

      t.timestamps
    end
  end
end