class CreateLookupRegions < ActiveRecord::Migration
  def change
    create_table 		:lookup_regions do |t|
    	t.string			:name
    	t.string			:code
    	t.string			:adm1code
    	t.string			:description
    	t.belongs_to	:lookup_country

      t.timestamps
    end
  end
end
