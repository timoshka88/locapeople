class CreateLookupRegions < ActiveRecord::Migration
  def change
    create_table 		:lookup_regions do |t|
    	t.string			:region_name
    	t.string			:code
    	t.string			:adm1_code
    	t.belongs_to	:lookup_country

      t.timestamps
    end
  end
end
