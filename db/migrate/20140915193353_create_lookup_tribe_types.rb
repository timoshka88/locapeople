class CreateLookupTribeTypes < ActiveRecord::Migration
  def change
    create_table :lookup_tribe_types do |t|
    	t.string		:name
    	t.string		:description
    	
      t.timestamps
    end
  end
end