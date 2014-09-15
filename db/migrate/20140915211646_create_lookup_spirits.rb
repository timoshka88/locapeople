class CreateLookupSpirits < ActiveRecord::Migration
  def change
    create_table :lookup_spirits do |t|
    	t.string 		:name
    	t.string		:description
    	
      t.timestamps
    end
  end
end
