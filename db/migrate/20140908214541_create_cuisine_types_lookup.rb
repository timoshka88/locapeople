class CreateCuisineTypesLookup < ActiveRecord::Migration
  def change
    create_table 	:cuisine_types_lookup do |t|
    	t.string		:name
    	t.string		:description

      t.timestamps
    end
  end
end