class CreateDrinks < ActiveRecord::Migration
  def change
    create_table 	:drinks do |t|
    	t.string		:name
    	t.string		:description
    	t.string		:drink_type #drink_type_name_id foreign key
    	t.integer		:country_id #country of origin  foreign key

      t.timestamps
    end
  end
end