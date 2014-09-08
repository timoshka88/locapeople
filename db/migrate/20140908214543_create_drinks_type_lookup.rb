class CreateDrinksTypeLookup < ActiveRecord::Migration
  def change
    create_table 	:drinks_type_lookup do |t|
    	t.string		:name
    	t.string		:description

      t.timestamps
    end
  end
end